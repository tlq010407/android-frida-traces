.class public abstract Lorg/telegram/ui/Components/CaptionPhotoViewer;
.super Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.source "SourceFile"


# instance fields
.field private final SHOW_ONCE:I

.field private final addPhotoButton:Landroid/widget/ImageView;

.field private addPhotoVisible:Z

.field private final applyCaption:Ljava/lang/Runnable;

.field private final collapseMoveButton:Ljava/lang/Runnable;

.field private final hint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private isVideo:Z

.field private final moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final moveButtonBounds:Landroid/graphics/RectF;

.field private moveButtonExpanded:Z

.field private final moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private moveButtonIcon:Landroid/graphics/drawable/Drawable;

.field private final moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private moveButtonVisible:Z

.field private onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

.field private timer:I

.field private final timerButton:Landroid/widget/ImageView;

.field private final timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private timerPopup:Lorg/telegram/ui/Components/ItemOptions;

.field private timerVisible:Z

.field private final values:[I


# direct methods
.method public static synthetic $r8$lambda$5yTR5_2p8zx2sp0sHdfTZ8Kainw(Lorg/telegram/ui/Components/CaptionPhotoViewer;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTWrSRWbXjglRMrCwy-fYfXBzs8(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$setAddPhotoVisible$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FG-wsaRuZuNPYpwPyIZNOqbkvTM(Lorg/telegram/ui/Components/CaptionPhotoViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$IXDTiGlsyyjWaDyLvIrQVLNfbt0(Lorg/telegram/ui/Components/CaptionPhotoViewer;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$new$1(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bt7CtikWYGZ4MTmb4W45nQk0tag(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->lambda$setTimerVisible$4(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    const/4 v9, 0x0

    iput v9, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    const v0, 0x7fffffff

    iput v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->SHOW_ONCE:I

    const/16 v1, 0xa

    const/16 v2, 0x1e

    const/4 v10, 0x3

    filled-new-array {v0, v10, v1, v2, v9}, [I

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->values:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    iput-object v11, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    move-object/from16 v0, p7

    iput-object v0, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->applyCaption:Ljava/lang/Runnable;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->MoveCaptionDown:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_link_below:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->MoveCaptionUp:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_link_above:I

    goto :goto_0

    :goto_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->filled_add_photo:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, 0x40ffffff    # 7.9999995f

    const/4 v6, 0x1

    invoke-static {v5, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v9, v9}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setAddPhotoVisible(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    const/16 v11, 0x30

    const/16 v12, 0x50

    if-eqz v4, :cond_1

    const/16 v4, 0x30

    goto :goto_2

    :cond_1
    const/16 v4, 0x50

    :goto_2
    or-int/lit8 v15, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    const/high16 v20, 0x41200000    # 10.0f

    const/16 v21, 0x0

    if-eqz v4, :cond_2

    const/high16 v17, 0x41200000    # 10.0f

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v19, 0x0

    goto :goto_4

    :cond_3
    const/high16 v19, 0x41200000    # 10.0f

    :goto_4
    const/16 v13, 0x2c

    const/high16 v14, 0x42300000    # 44.0f

    const/high16 v16, 0x41600000    # 14.0f

    const/16 v18, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object v4, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5, v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v7, v9, v9}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setTimerVisible(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x30

    goto :goto_5

    :cond_4
    const/16 v2, 0x50

    :goto_5
    or-int/lit8 v15, v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v17, 0x41200000    # 10.0f

    goto :goto_6

    :cond_5
    const/16 v17, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v19, 0x0

    goto :goto_7

    :cond_6
    const/high16 v19, 0x41200000    # 10.0f

    :goto_7
    const/16 v13, 0x2c

    const/high16 v14, 0x42300000    # 44.0f

    const/16 v16, 0x0

    const/high16 v18, 0x41300000    # 11.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v10, 0x1

    :cond_7
    invoke-direct {v2, v8, v10}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v2, v7, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v5

    const/high16 v8, 0x41000000    # 8.0f

    if-eqz v5, :cond_8

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_9

    :cond_9
    const/high16 v21, 0x41000000    # 8.0f

    :goto_9
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v4, v5, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x3e580000    # -21.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    const/16 v11, 0x50

    :goto_a
    or-int/lit8 v3, v11, 0x5

    invoke-static {v0, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda1;

    move-object/from16 v2, p2

    invoke-direct {v0, v7, v2}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeTimer(I)V
    .locals 9

    iget v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->setTimer(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-nez p1, :cond_3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v6, :cond_2

    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodVideoKeep:I

    goto :goto_0

    :cond_2
    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodPhotoKeep:I

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v7, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v7, v1, v4, v0, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_2

    :cond_3
    const v6, 0x7fffffff

    if-ne p1, v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v6, :cond_4

    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodVideoSetOnce:I

    goto :goto_0

    :cond_4
    sget v6, Lorg/telegram/messenger/R$string;->TimerPeriodPhotoSetOnce:I

    goto :goto_0

    :cond_5
    if-lez p1, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    if-eqz v0, :cond_6

    const-string v0, "TimerPeriodVideoSetSeconds"

    goto :goto_1

    :cond_6
    const-string v0, "TimerPeriodPhotoSetSeconds"

    :goto_1
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1, v7, v4, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconMargin(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIconTranslate(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getEditTextHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v3, v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v4

    if-eqz v4, :cond_7

    const/high16 v2, -0x40800000    # -1.0f

    :cond_7
    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    if-lez p1, :cond_8

    sget p1, Lorg/telegram/messenger/R$raw;->fire_on:I

    goto :goto_3

    :cond_8
    sget p1, Lorg/telegram/messenger/R$raw;->fire_off:I

    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setIcon(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    iput-boolean v5, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->changeTimer(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    new-instance p2, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {p2}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    sget v0, Lorg/telegram/messenger/R$string;->TimerPeriodHint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->values:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    if-nez v2, :cond_1

    sget v3, Lorg/telegram/messenger/R$string;->TimerPeriodDoNotDelete:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    sget v3, Lorg/telegram/messenger/R$string;->TimerPeriodOnce:I

    goto :goto_1

    :cond_2
    new-array v3, p2, [Ljava/lang/Object;

    const-string v4, "Seconds"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    new-instance v5, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;I)V

    invoke-virtual {v4, p2, v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    iget v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->putCheck()Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setAddPhotoVisible$3(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setTimerVisible$4(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected additionalKeyboardHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected afterUpdateShownKeyboard(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected beforeUpdateShownKeyboard(Z)V
    .locals 3

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_3
    return-void
.end method

.method protected clipChild(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->showMoveButton()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    move-result v12

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpandedAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v1, v12, v0

    if-lez v1, :cond_7

    iget-object v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3cf5c28f    # 0.03f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v2

    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x42300000    # 44.0f

    const/high16 v7, 0x41200000    # 10.0f

    if-eqz v2, :cond_0

    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v9, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v7, v5

    mul-float v7, v7, v13

    add-float/2addr v6, v7

    iget-object v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    invoke-virtual {v2, v8, v9, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v9, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v6, v5

    mul-float v6, v6, v13

    add-float/2addr v4, v6

    iget-object v5, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v8, v9, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v14, 0x437f0000    # 255.0f

    cmpg-float v2, v12, v2

    if-gez v2, :cond_1

    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    mul-float v4, v12, v14

    float-to-int v4, v4

    const/16 v5, 0x1f

    invoke-virtual {v11, v2, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v11, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const v1, 0x410547ae    # 8.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->customBlur()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    iget-object v3, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    const/4 v8, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v4, v15

    const/4 v14, 0x0

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZF)V

    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    :goto_2
    invoke-static {v14, v1, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v0, v15, v15, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_2
    const/4 v14, 0x0

    iget-object v1, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-virtual {v1, v12, v0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->getPaints(FFF)[Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_6

    aget-object v1, v0, v3

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    aget-object v1, v0, v14

    if-eqz v1, :cond_4

    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v2, v15, v15, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    iget-object v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v11, v1, v15, v15, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x33

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, v10, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    goto :goto_2

    :goto_4
    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x41d80000    # 27.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42080000    # 34.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(FFFF)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v13, v13, v1

    float-to-int v1, v13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget-object v4, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onMoveButtonClick()V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$string;->MoveCaptionDown:I

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->MoveCaptionUp:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v3

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    const/4 v2, 0x1

    :cond_9
    return v2
.end method

.method public expandMoveButton()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->shouldShowMoveCaptionHint()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->incrementMoveCaptionHint()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->collapseMoveButton:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    return v0
.end method

.method protected getCaptionLimit()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getCaptionPremiumLimit()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->getCaptionDefaultLimit()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    return v0
.end method

.method public getEditTextHeight()I
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getEditTextHeight()I

    move-result v0

    return v0
.end method

.method protected getEditTextLeft()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getEditTextStyle()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasTimer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onEditHeightChange(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected abstract onMoveButtonClick()V
.end method

.method protected onTextChange()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->applyCaption:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onUpdateShowKeyboard(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected abstract openedKeyboard()V
.end method

.method public setAddPhotoVisible(ZZ)V
    .locals 5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, -0x3f000000    # -8.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v3, p1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateEditTextLeft()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz p2, :cond_6

    const/16 v2, 0x21

    :cond_6
    const/16 p2, 0xc

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->isVideo:Z

    return-void
.end method

.method public setOnAddPhotoClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTimerChange(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onTTLChange:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setShowMoveButtonVisible(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonVisible:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->moveButtonAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTimer(I)V
    .locals 3

    iput p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timer:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->hint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_2
    return-void
.end method

.method public setTimerVisible(ZZ)V
    .locals 5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/CaptionPhotoViewer;Z)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_5

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v3, p1

    :goto_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->addPhotoVisible:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerVisible:Z

    if-eqz p2, :cond_6

    const/16 v2, 0x21

    :cond_6
    const/16 p2, 0xc

    add-int/2addr p2, v2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected abstract showMoveButton()Z
.end method

.method public updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/CaptionPhotoViewer;->timerDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->updateColors(III)V

    return-void
.end method

.method public updateKeyboard(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->toKeyboardShow:Z

    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->updateKeyboard(I)V

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->openedKeyboard()V

    :cond_0
    return-void
.end method
