.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonContainer"
.end annotation


# instance fields
.field final alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private animator:Landroid/animation/ValueAnimator;

.field final dividerPaint:Landroid/graphics/Paint;

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

.field private translationY:F

.field private translationY2:F


# direct methods
.method public static synthetic $r8$lambda$3iOLnZoVxsbctwKD2XWMHU6dJpE(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->lambda$translateY$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$42qGW8kxk47HgobtxRfqybUZj-g(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->lambda$hide$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->dividerPaint:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$hide$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY2:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY:F

    add-float/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$translateY$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$2900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->access$900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public hide(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY2:F

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v0

    const/4 p2, 0x1

    aput v1, v2, p2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float v1, p1

    :cond_4
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY2:F

    iget p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY:F

    add-float/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY2:F

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->translationY:F

    add-float/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public translateY(FF)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer$2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;F)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page$ButtonContainer;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
