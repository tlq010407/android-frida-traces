.class public Lorg/telegram/ui/Components/voip/AcceptDeclineView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;,
        Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;
    }
.end annotation


# instance fields
.field private final acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final acceptCirclePaint:Landroid/graphics/Paint;

.field private final acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private final acceptLayout:Landroid/text/StaticLayout;

.field acceptRect:Landroid/graphics/Rect;

.field private acceptVideoDrawable:Landroid/graphics/drawable/Drawable;

.field private acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

.field private final avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

.field bigRadius:F

.field private buttonWidth:I

.field private callAnimator:Landroid/animation/ValueAnimator;

.field private final callDrawable:Landroid/graphics/drawable/Drawable;

.field private final cancelDrawable:Landroid/graphics/drawable/Drawable;

.field captured:Z

.field private final declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private final declineLayout:Landroid/text/StaticLayout;

.field declineRect:Landroid/graphics/Rect;

.field expandBigRadius:Z

.field expandSmallRadius:Z

.field private isVideo:Z

.field leftAnimator:Landroid/animation/Animator;

.field leftDrag:Z

.field leftOffsetX:F

.field linePaint:Landroid/graphics/Paint;

.field listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

.field private final maskPaint:Landroid/graphics/Paint;

.field maxOffset:F

.field private final retryLayout:Landroid/text/StaticLayout;

.field retryMod:Z

.field rightAnimator:Landroid/animation/Animator;

.field rigthOffsetX:F

.field rippleDrawable:Landroid/graphics/drawable/Drawable;

.field smallRadius:F

.field startDrag:Z

.field startX:F

.field startY:F

.field touchSlop:F


# direct methods
.method public static synthetic $r8$lambda$0L4rTGanHQ2PPIU3UThiZnkUNKE(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IbfpJBh3X899dR0VGTKVYLe-7a8(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPPJ_JLCA2IGcqrPPOJayt31SDc(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->lambda$setRetryMod$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptCirclePaint:Landroid/graphics/Paint;

    new-instance v4, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-instance v4, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maskPaint:Landroid/graphics/Paint;

    new-instance v5, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const/high16 v6, 0x42340000    # 45.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;-><init>(IIII)V

    iput-object v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    iput-boolean v3, v5, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->muteToStatic:Z

    const/4 v6, 0x0

    iput v6, v5, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->muteToStaticProgress:F

    iput v6, v5, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->wavesEnter:F

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    new-instance v4, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v6, -0xbf38b7

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    new-instance v6, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v7, -0xfe2d4

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    iget v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-virtual {v4, v8, v8, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget v7, Lorg/telegram/messenger/R$string;->AcceptCall:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v7, Lorg/telegram/messenger/R$string;->DeclineCall:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$string;->RetryCall:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v14, Landroid/text/StaticLayout;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v12, v9

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v9, v14

    move-object v11, v4

    move-object/from16 v13, v17

    move-object v8, v14

    move/from16 v14, v19

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v12, v9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v9, v8

    move-object v10, v7

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v8, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    new-instance v7, Landroid/text/StaticLayout;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-int v12, v8

    move-object v9, v7

    move-object v10, v6

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    sget v4, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v9, Lorg/telegram/messenger/R$raw;->call_accept:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->calls_video:I

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVideoDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/16 v3, 0x4c

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private synthetic lambda$setRetryMod$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setAmplitude(D)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p0, v1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$1;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->stopAnimations()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x40800000    # 4.0f

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    const/4 v2, 0x1

    const v3, 0x3d23d70a    # 0.04f

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_1

    iput v10, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->smallRadius:F

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandSmallRadius:Z

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    const v3, 0x3cf5c28f    # 0.03f

    if-eqz v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    iput-boolean v9, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    goto :goto_1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v1, v5

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    iput-boolean v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->expandBigRadius:Z

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ba3d70a    # 0.005f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->bigRadius:F

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v13, 0x42380000    # 46.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    sub-int/2addr v2, v3

    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v15, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v4, v5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v8, v1, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->update()V

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    int-to-float v1, v1

    invoke-virtual {v2, v8, v1, v1, v0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryLayout:Landroid/text/StaticLayout;

    :goto_3
    invoke-virtual {v1, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_9
    iget v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptLayout:Landroid/text/StaticLayout;

    goto :goto_3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->isVideo:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v11

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVideoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v9, v9, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVideoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->accessibilityNodeProvider:Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$AcceptDeclineAccessibilityNodeProvider;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    const/high16 p2, 0x42380000    # 46.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v0, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->buttonWidth:I

    const/high16 p2, 0x41e00000    # 28.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p1, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->cancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {v0, p1, p1, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->linePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_9

    if-eq v2, v1, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    if-eqz p1, :cond_d

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startY:F

    sub-float/2addr p1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    new-array v0, v0, [F

    aput v2, v0, v3

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_4

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftOffsetX:F

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    invoke-interface {p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;->onDecline()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    new-array v0, v0, [F

    aput v2, v0, v3

    aput v5, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    if-nez v0, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->touchSlop:F

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_7

    :cond_6
    iget p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rigthOffsetX:F

    neg-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->maxOffset:F

    mul-float v0, v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    invoke-interface {p1}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;->onAccept()V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startDrag:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->startY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftAnimator:Landroid/animation/Animator;

    const/high16 v2, 0x42500000    # 52.0f

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    if-eqz v0, :cond_a

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_a
    const v0, -0xc7ba

    :goto_1
    invoke-static {p1, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const v0, -0xb22eaa

    invoke-static {p1, v3, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->captured:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->leftDrag:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptBounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rightAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_d
    :goto_2
    return v3
.end method

.method public setListener(Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->listener:Lorg/telegram/ui/Components/voip/AcceptDeclineView$Listener;

    return-void
.end method

.method public setRetryMod(Z)V
    .locals 4

    iput-boolean p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->retryMod:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->avatarWavesDrawable:Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p0}, Lorg/telegram/ui/Components/voip/ImageWithWavesView$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->declineDrawable:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const v2, -0xfe2d4

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    const/16 p1, 0x9

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/AcceptDeclineView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/voip/AcceptDeclineView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3c
        0x0
        0x0
        0x3c
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public stopAnimations()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->callAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->acceptVoiceDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/AcceptDeclineView;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
