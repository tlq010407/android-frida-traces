.class public Lorg/telegram/ui/Components/ChecksHintView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private arrowImageView:Landroid/widget/ImageView;

.field private currentView:Landroid/view/View;

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageView:[Lorg/telegram/ui/Components/RLottieImageView;

.field private messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showingDuration:J

.field private textView:[Landroid/widget/TextView;

.field private translationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    new-array v1, v0, [Lorg/telegram/ui/Components/RLottieImageView;

    iput-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->showingDuration:J

    iput-object p2, p0, Lorg/telegram/ui/Components/ChecksHintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChecksHintView;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    const/4 v10, 0x0

    const/high16 v11, 0x40c00000    # 6.0f

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    if-nez v4, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v9, 0x41c00000    # 24.0f

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x18

    const/high16 v6, 0x41c00000    # 24.0f

    const/16 v7, 0x33

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintText:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChecksHintView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    if-nez v4, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_2

    :cond_1
    const/high16 v2, 0x41d00000    # 26.0f

    const/high16 v9, 0x41d00000    # 26.0f

    :goto_2
    const/high16 v10, 0x41200000    # 10.0f

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x33

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x18

    iget-object v2, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    if-nez v4, :cond_2

    aget-object v2, v2, v4

    sget v3, Lorg/telegram/messenger/R$raw;->ticks_single:I

    invoke-virtual {v2, v3, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    sget v2, Lorg/telegram/messenger/R$string;->HintSent:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    aget-object v2, v2, v4

    sget v3, Lorg/telegram/messenger/R$raw;->ticks_double:I

    invoke-virtual {v2, v3, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    sget v2, Lorg/telegram/messenger/R$string;->HintRead:I

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChecksHintView;->imageView:[Lorg/telegram/ui/Components/RLottieImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    sget p1, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_gifSaveHintBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChecksHintView;->getThemedColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0xe

    const/high16 v1, 0x40c00000    # 6.0f

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ChecksHintView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ChecksHintView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->hideRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChecksHintView;)[Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ChecksHintView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->currentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ChecksHintView;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-object p1
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChecksHintView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getBaseTranslationY()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChecksHintView;->translationY:F

    return v0
.end method

.method public hide()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChecksHintView;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChecksHintView;->hideRunnable:Ljava/lang/Runnable;

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    new-array v5, v1, [F

    aput v4, v5, v0

    invoke-static {p0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v1, [F

    aput v4, v7, v0

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v0

    aput-object v5, v6, v1

    const/4 v0, 0x2

    aput-object v4, v6, v0

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChecksHintView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChecksHintView$3;-><init>(Lorg/telegram/ui/Components/ChecksHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChecksHintView;->hideRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChecksHintView;->hideRunnable:Ljava/lang/Runnable;

    :cond_0
    new-array v3, v2, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v3, v1

    sub-int/2addr v5, v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/16 v6, 0x3e8

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v8, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    if-gt v5, v6, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getChecksY()I

    move-result v6

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getChecksX()I

    move-result v6

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/ChecksHintView;->translationY:F

    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v5, v6

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v2

    const/4 v11, 0x0

    if-le v5, v10, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v8, v10

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v8, v10

    int-to-float v10, v8

    invoke-virtual {p0, v10}, Landroid/view/View;->setTranslationX(F)V

    add-int/2addr v9, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v11}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v8, v6

    sub-int/2addr v8, v9

    iget-object v6, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v8, v6

    int-to-float v6, v8

    iget-object v8, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    if-le v5, v3, :cond_3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChecksHintView;->arrowImageView:Landroid/widget/ImageView;

    sub-float v3, v6, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v6, v3

    if-gez v3, :cond_5

    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {p0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {p0, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setPivotY(F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->messageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object p2, v5, v0

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/ChecksHintView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChecksHintView$1;-><init>(Lorg/telegram/ui/Components/ChecksHintView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    invoke-virtual {p1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_4
    if-ge v0, v2, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChecksHintView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3f851eb8    # 1.04f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez v0, :cond_7

    const/16 p2, 0x84

    goto :goto_5

    :cond_7
    const/16 p2, 0x1f4

    :goto_5
    add-int/lit16 p2, p2, 0x8c

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChecksHintView$2;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Components/ChecksHintView$2;-><init>(Lorg/telegram/ui/Components/ChecksHintView;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/2addr v0, v1

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
