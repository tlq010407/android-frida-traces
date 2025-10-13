.class public Lorg/telegram/ui/Stories/recorder/GallerySheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# instance fields
.field private galleryListViewOpening:Ljava/lang/Boolean;

.field private galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

.field private galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

.field private onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$-DA-jpBfRM0LhiQhWYpkEufDUBU(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$BQ8s7CwwX9dov_Zzz_bSCXR54No(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->lambda$dismiss$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XaKx-q707y6tPhu6DMvMS7ZfKVE(Lorg/telegram/ui/Stories/recorder/GallerySheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->lambda$animate$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$boleV3-p_swaWSlzgvrOP5qHLLs(Lorg/telegram/ui/Stories/recorder/GallerySheet;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->lambda$new$1(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x37FlltTpeb4zFQvqEKMRa4TFIQ(Lorg/telegram/ui/Stories/recorder/GallerySheet;FLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->lambda$animate$3(FLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;ZF)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p1

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v0, -0xe0e0e1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v14, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v4, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stories/recorder/GallerySheet$1;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZLjava/lang/String;)V

    iput-object v14, v11, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->allowSearch(Z)V

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setMultipleOnClick(Z)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnBackClickListener(Ljava/lang/Runnable;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V

    new-instance v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v1, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v13, v1, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v11, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/GallerySheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/GallerySheet;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryListViewOpening:Ljava/lang/Boolean;

    return-object p1
.end method

.method private animate(ZLjava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p1, v0, v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 v0, 0x43af0000    # 350.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, p2}, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;FLjava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stories/recorder/GallerySheet$2;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$animate$3(FLjava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    const/4 p3, 0x0

    iput-boolean p3, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ignoreScroll:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryOpenCloseSpringAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$animate$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$dismiss$2()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->galleryListViewOpening:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public dismiss()V
    .locals 2

    new-instance v0, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/GallerySheet;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->animate(ZLjava/lang/Runnable;)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->listView:Lorg/telegram/ui/Stories/recorder/GalleryListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnGalleryImage(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GallerySheet;->onGalleryListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/GallerySheet;->animate(ZLjava/lang/Runnable;)V

    return-void
.end method
