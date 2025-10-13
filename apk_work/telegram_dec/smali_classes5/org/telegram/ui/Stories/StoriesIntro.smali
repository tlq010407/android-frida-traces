.class public Lorg/telegram/ui/Stories/StoriesIntro;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;
    }
.end annotation


# instance fields
.field private current:I

.field private final items:Ljava/util/ArrayList;

.field private prev:I

.field private final startItemAnimationRunnable:Ljava/lang/Runnable;

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$8BgGD-psr7PHLAxyIGPGm2CMe-o(Lorg/telegram/ui/Stories/StoriesIntro;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoriesIntro;->lambda$startAnimation$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHNuZgY_6XLnOWRdiEUoml_BATE(Lorg/telegram/ui/Stories/StoriesIntro;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesIntro;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, v0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    const/4 v4, 0x0

    iput v4, v0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    new-instance v5, Lorg/telegram/ui/Stories/StoriesIntro$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/StoriesIntro$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoriesIntro;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoriesIntro;->startItemAnimationRunnable:Ljava/lang/Runnable;

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v7, 0x64000000

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v6, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v4, v9, v4, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v9, Lorg/telegram/messenger/R$string;->StoriesIntroHeader:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, -0x2

    invoke-static {v9, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, -0x69000001

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    sget v10, Lorg/telegram/messenger/R$string;->StoriesIntroSubHeader:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v8, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v15, 0x42880000    # 68.0f

    const/high16 v16, 0x42100000    # 36.0f

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/high16 v13, 0x42880000    # 68.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Ljava/util/ArrayList;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    sget v13, Lorg/telegram/messenger/R$raw;->stories_intro_go_forward:I

    sget v14, Lorg/telegram/messenger/R$string;->StoriesIntroGoForwardHeader:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$string;->StoriesIntroGoForwardSubHeader:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v1, v13, v14, v15}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    sget v13, Lorg/telegram/messenger/R$raw;->stories_intro_pause:I

    sget v14, Lorg/telegram/messenger/R$string;->StoriesIntroPauseAndSeekHeader:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$string;->StoriesIntroPauseAndSeekSubHeader:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v1, v13, v14, v15}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    sget v13, Lorg/telegram/messenger/R$raw;->stories_intro_go_back:I

    sget v14, Lorg/telegram/messenger/R$string;->StoriesIntroGoBackHeader:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$string;->StoriesIntroGoBackSubHeader:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v1, v13, v14, v15}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    sget v13, Lorg/telegram/messenger/R$raw;->stories_intro_go_to_next:I

    sget v14, Lorg/telegram/messenger/R$string;->StoriesIntroGoToNextAuthorHeader:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$string;->StoriesIntroGoToNextAuthorSubHeader:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v1, v13, v14, v15}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v13}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->getRequiredWidth()I

    move-result v13

    if-le v13, v12, :cond_0

    move v12, v13

    goto :goto_0

    :cond_1
    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    if-le v13, v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v12, v11

    :cond_2
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v11, v4, v13, v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v6, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lorg/telegram/messenger/R$string;->StoriesIntroDismiss:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/high16 v14, 0x42920000    # 73.0f

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-static {v3, v9, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x41400000    # 12.0f

    const/16 v7, 0xa

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->makeBlurBitmap(Landroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    const/high16 v7, -0x23000000

    invoke-direct {v3, v7, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/StoriesIntro$1;

    invoke-direct {v3, v0, v4, v2, v8}, Lorg/telegram/ui/Stories/StoriesIntro$1;-><init>(Lorg/telegram/ui/Stories/StoriesIntro;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StoriesIntro;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StoriesIntro;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesIntro;->updateCurrentAnimatedItem()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoriesIntro;->startAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$startAnimation$1(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->setProgress(F)V

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private updateCurrentAnimatedItem()V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iput v2, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput v2, p0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    :cond_1
    return-void
.end method


# virtual methods
.method startAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/StoriesIntro$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesIntro$2;-><init>(Lorg/telegram/ui/Stories/StoriesIntro;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/StoriesIntro$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesIntro$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesIntro;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->startItemAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->getLottieAnimationDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->startItemAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->prev:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->stopAnimation()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesIntro;->items:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesIntro;->current:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesIntro$StoriesIntroItemView;->stopAnimation()V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoriesIntro;->updateCurrentAnimatedItem()V

    return-void
.end method
