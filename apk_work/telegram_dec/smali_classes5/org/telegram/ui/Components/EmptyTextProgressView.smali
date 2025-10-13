.class public Lorg/telegram/ui/Components/EmptyTextProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private inLayout:Z

.field private lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private progressView:Landroid/view/View;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showAtPos:I

.field private textView:Landroid/widget/TextView;

.field private textViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$Vq18KDUqpLFj2-u41GI6no-lj-8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, -0x2

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    :goto_0
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    goto :goto_0

    :goto_1
    iput-object v2, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v15, 0x0

    const/16 v16, 0x14

    const/16 v10, 0x96

    const/16 v11, 0x96

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-static {v4, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v9, v3, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, v9, v1, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    if-ne v1, v4, :cond_1

    instance-of v4, v4, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    if-ne v4, v3, :cond_2

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_2
    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_4

    :cond_2
    if-ne v4, p1, :cond_3

    div-int/lit8 v4, p5, 0x2

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p5, v4

    goto :goto_2

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLottie(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_1
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    :cond_0
    return-void
.end method

.method public setShowAtCenter(Z)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    return-void
.end method

.method public setShowAtTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTopImage(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :goto_0
    return-void
.end method

.method public showProgress()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress(Z)V

    return-void
.end method

.method public showProgress(Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method public showTextView()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method
