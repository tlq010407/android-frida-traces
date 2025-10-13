.class public Lorg/telegram/ui/Components/SwipeGestureSettingsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field backgroundKeys:[I

.field colorProgress:F

.field currentColorKey:I

.field currentIconIndex:I

.field currentIconValue:I

.field filledPaint:Landroid/graphics/Paint;

.field fromColor:I

.field hasTabs:Z

.field iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

.field icons:[Lorg/telegram/ui/Components/RLottieDrawable;

.field linePaint:Landroid/graphics/Paint;

.field outlinePaint:Landroid/graphics/Paint;

.field private picker:Lorg/telegram/ui/Components/NumberPicker;

.field pickerDividersPaint:Landroid/graphics/Paint;

.field progressToSwipeFolders:F

.field rect:Landroid/graphics/RectF;

.field strings:[Ljava/lang/String;

.field swapIconRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$NlDmQiN0aDbkcQrUsXScxNXMR9E(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YgpkfuTuKiC_0DdKcX7K-XwRWws(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$swapIcons$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wmjRpP-KY79yrqKxg2ozJCgEyaA(Lorg/telegram/ui/Components/SwipeGestureSettingsView;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->lambda$new$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    new-array v5, v2, [I

    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    new-array v2, v2, [Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x2

    new-array v5, v2, [Lorg/telegram/ui/Components/RLottieImageView;

    iput-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsPin:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsRead:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsArchive:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsMute:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v4, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsDelete:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v4, v9

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->SwipeSettingsFolders:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x5

    aput-object v6, v4, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    aput v6, v4, v7

    aput v6, v4, v3

    aput v6, v4, v2

    aput v6, v4, v8

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSwipeRemove:I

    aput v6, v4, v9

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    aput v6, v4, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->pickerDividersPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;

    const/16 v6, 0xd

    invoke-direct {v4, v0, v1, v6}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;Landroid/content/Context;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/NumberPicker;->setDrawDividers(Z)V

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->hasTabs:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    array-length v6, v6

    sub-int/2addr v6, v3

    :goto_1
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setAllItemsCount(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    new-instance v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    const/high16 v16, 0x41a80000    # 21.0f

    const/16 v17, 0x0

    const/16 v11, 0x84

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x5

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    iput v7, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v6, v6, v4

    const/high16 v16, 0x43380000    # 184.0f

    const/16 v17, 0x0

    const/16 v11, 0x1c

    const/high16 v12, 0x41e00000    # 28.0f

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v3, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-static {v1, v7, v2, v7}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    if-ne v1, v10, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    return-void
.end method

.method private synthetic lambda$new$0(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/NumberPicker;II)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    invoke-static {p3}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p2, 0x3

    const/4 p3, 0x2

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$swapIcons$2()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIcons()V

    return-void
.end method

.method private swapIcons()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconValue:I

    iget v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    iget v4, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    aget-object v0, v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v0, v0, v1

    invoke-static {v0, v2, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iput v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentIconIndex:I

    new-instance v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SwipeGestureSettingsView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->swapIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getIcon(I)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v1, v0, p1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$raw;->swipe_pin:I

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_disabled:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_delete:I

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_mute:I

    goto :goto_0

    :cond_3
    sget v1, Lorg/telegram/messenger/R$raw;->chats_archive:I

    goto :goto_0

    :cond_4
    sget v1, Lorg/telegram/messenger/R$raw;->swipe_read:I

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    aput-object v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x3d5a740e

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v9, v6, v5

    if-eqz v9, :cond_2

    add-float/2addr v6, v2

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v1, v6, v5

    if-lez v1, :cond_1

    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    iget v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpl-float v6, v1, v8

    if-eqz v6, :cond_4

    sub-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_3

    iput v8, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->progressToSwipeFolders:F

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->iconViews:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x43040000    # 132.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    sub-int/2addr v1, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v9, v4

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    int-to-float v11, v11

    invoke-virtual {v6, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    const v10, 0x3f666666    # 0.9f

    if-gez v6, :cond_5

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget v6, v6, v11

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    iget v11, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v6, v11, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    goto :goto_3

    :cond_5
    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget v6, v6, v11

    iget v11, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    if-eq v6, v11, :cond_6

    iget v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    iget v12, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v11, v12, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v11

    iget v12, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v6, v11, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    iput v8, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->backgroundKeys:[I

    iget-object v11, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v11

    aget v6, v6, v11

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    :cond_6
    :goto_3
    iget v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v11, v6, v5

    if-eqz v11, :cond_8

    const v11, 0x3e23d70a    # 0.16f

    add-float/2addr v6, v11

    iput v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_7

    iput v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_4
    iget v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->fromColor:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->currentColorKey:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v12, v13, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v10

    iget v12, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->colorProgress:F

    invoke-static {v6, v10, v12}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v12, v13, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v11, 0xff

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    const/high16 v11, 0x42680000    # 58.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v1, v11

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    int-to-float v4, v11

    invoke-virtual {v6, v3, v9, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->filledPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x41b80000    # 23.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x42880000    # 68.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v1, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v1, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p1

    add-int/2addr p1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->strings:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42cc0000    # 102.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateColors()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->picker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->updateIconColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateIconColor(I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v2, v2, p1

    const-string v3, "Arrow.**"

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object v0, v0, p1

    const-string v2, "Box2.**"

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    const-string v0, "Box1.**"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SwipeGestureSettingsView;->icons:[Lorg/telegram/ui/Components/RLottieDrawable;

    aget-object p1, v0, p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method
