.class public abstract Lorg/telegram/ui/CodeNumberField;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# static fields
.field private static final ERROR_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final FOCUSED_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final SUCCESS_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final SUCCESS_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;


# instance fields
.field enterAnimation:F

.field enterAnimator:Landroid/animation/ValueAnimator;

.field private errorProgress:F

.field private errorSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field exitAnimation:F

.field exitAnimator:Landroid/animation/ValueAnimator;

.field exitBitmap:Landroid/graphics/Bitmap;

.field exitCanvas:Landroid/graphics/Canvas;

.field private focusedProgress:F

.field private focusedSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field pressed:Z

.field replaceAnimation:Z

.field private showSoftInputOnFocusInternal:Z

.field startX:F

.field startY:F

.field private successProgress:F

.field private successScaleProgress:F

.field private successScaleSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private successSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public static synthetic $r8$lambda$-5g0GVwwllzQjIXFZT8itpR3Y64(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$static$3(Lorg/telegram/ui/CodeNumberField;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$2FBIJfK6uDoB7WEDPSqsAb3WDm0(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CodeNumberField;->lambda$static$0(Lorg/telegram/ui/CodeNumberField;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$34p38S7bAxGRmJAX1cNIWT4pYyE(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CodeNumberField;->lambda$static$2(Lorg/telegram/ui/CodeNumberField;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5ixk-b8nTCtYwT0lysRUsR2xdPc(Lorg/telegram/ui/CodeNumberField;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$startExitAnimation$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7eoBv_fesWyyt52qZwqUMlUSWns(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CodeNumberField;->lambda$static$4(Lorg/telegram/ui/CodeNumberField;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8PP3jZio9e8HrIjQ2NMH4qaWzlI(Lorg/telegram/ui/CodeNumberField;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$startEnterAnimation$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CqX2w7BmV_JB8akX88aagtdENvQ(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/CodeNumberField;->lambda$static$6(Lorg/telegram/ui/CodeNumberField;)F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HpXuBv82yoAS76t8pi9KS1yL5o0(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$static$1(Lorg/telegram/ui/CodeNumberField;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$UomGlqr4jGp-JcdvkMj7Ervg9P4(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$static$5(Lorg/telegram/ui/CodeNumberField;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$XQm0Un1gX-rJzRog9t989rgHlYA(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/CodeNumberField;->lambda$static$7(Lorg/telegram/ui/CodeNumberField;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v1, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "focusedProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CodeNumberField;->FOCUSED_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v2, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda5;-><init>()V

    new-instance v3, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda6;-><init>()V

    const-string v4, "errorProgress"

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CodeNumberField;->ERROR_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v2, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda7;-><init>()V

    new-instance v3, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda8;-><init>()V

    const-string v4, "successProgress"

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CodeNumberField;->SUCCESS_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    new-instance v2, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda10;-><init>()V

    const-string v4, "successScaleProgress"

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CodeNumberField;->SUCCESS_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->successScaleProgress:F

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/CodeNumberField;->FOCUSED_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->focusedSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/CodeNumberField;->ERROR_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->errorSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/CodeNumberField;->SUCCESS_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->successSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lorg/telegram/ui/CodeNumberField;->SUCCESS_SCALE_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->successScaleSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/CodeNumberField;->showSoftInputOnFocusInternal:Z

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimation:F

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimation:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->pressed:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->startX:F

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->startY:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p1, Lorg/telegram/ui/CodeNumberField$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CodeNumberField$1;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CodeNumberField;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/CodeNumberField;->pasteFromClipboard()V

    return-void
.end method

.method private animateSpring(Landroidx/dynamicanimation/animation/SpringAnimation;F)V
    .locals 2

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private synthetic lambda$startEnterAnimation$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startExitAnimation$8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CodeNumberField;->focusedProgress:F

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->focusedProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$2(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CodeNumberField;->errorProgress:F

    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->errorProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$4(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CodeNumberField;->successProgress:F

    return p0
.end method

.method private static synthetic lambda$static$5(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->successProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$6(Lorg/telegram/ui/CodeNumberField;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/CodeNumberField;->successScaleProgress:F

    return p0
.end method

.method private static synthetic lambda$static$7(Lorg/telegram/ui/CodeNumberField;F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->successScaleProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private pasteFromClipboard()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CodeFieldContainer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, -0x1

    :goto_1
    if-lez v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public animateErrorProgress(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->errorSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CodeNumberField;->animateSpring(Landroidx/dynamicanimation/animation/SpringAnimation;F)V

    return-void
.end method

.method public animateFocusedProgress(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->focusedSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CodeNumberField;->animateSpring(Landroidx/dynamicanimation/animation/SpringAnimation;F)V

    return-void
.end method

.method public animateSuccessProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->successSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, p1, v1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateSpring(Landroidx/dynamicanimation/animation/SpringAnimation;F)V

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->successScaleSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CodeNumberField;->successScaleSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x457a0000    # 4000.0f

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/telegram/ui/CodeNumberField;->successScaleProgress:F

    :goto_0
    return-void
.end method

.method public getErrorProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CodeNumberField;->errorProgress:F

    return v0
.end method

.method public getFocusedProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CodeNumberField;->focusedProgress:F

    return v0
.end method

.method public getSuccessProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CodeNumberField;->successProgress:F

    return v0
.end method

.method public getSuccessScaleProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/CodeNumberField;->successScaleProgress:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->focusedSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->errorSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/CodeNumberField;->pressed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/CodeNumberField;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/CodeNumberField;->startY:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CodeFieldContainer;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->pressed:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, ""

    :goto_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 p1, -0x1

    :goto_3
    if-lez p1, :cond_9

    new-instance p1, Lorg/telegram/ui/CodeNumberField$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CodeNumberField$2;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_5

    :cond_7
    :goto_4
    return v2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->showSoftInputOnFocusInternal:Z

    if-eqz p1, :cond_a

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/CodeNumberField;->pressed:Z

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->pressed:Z

    return p1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setShowSoftInputOnFocusCompat(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->showSoftInputOnFocusInternal:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;Z)V

    :cond_0
    return-void
.end method

.method public startEnterAnimation(Z)V
    .locals 2

    iput-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->replaceAnimation:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimation:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean p1, p0, Lorg/telegram/ui/CodeNumberField;->replaceAnimation:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xdc

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/CodeNumberField;->enterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startExitAnimation()V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitCanvas:Landroid/graphics/Canvas;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v4, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v6, v1

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v8

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getLineSpacingExtra()F

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v1, p0, Lorg/telegram/ui/CodeNumberField;->exitCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/CodeNumberField;->exitCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lorg/telegram/ui/CodeNumberField;->exitCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimation:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CodeNumberField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CodeNumberField;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/CodeNumberField;->exitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
