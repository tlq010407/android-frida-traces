.class public Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;,
        Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;
    }
.end annotation


# static fields
.field private static final CLOSE_FACTOR:Landroid/util/Property;

.field private static final OPEN_FACTOR:Landroid/util/Property;

.field private static final tmpCords:[I

.field private static final tmpRect:Landroid/graphics/Rect;

.field private static final tmpRectF:Landroid/graphics/RectF;


# instance fields
.field private final avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

.field private final ballLeft:Landroid/graphics/RectF;

.field private final ballRight:Landroid/graphics/RectF;

.field private ballsAllowed:Z

.field private bitmapMatrix:Landroid/graphics/Matrix;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private final bubbleCurrent:Landroid/graphics/RectF;

.field private bubbleOffset:F

.field private final bubbleStart:Landroid/graphics/RectF;

.field private bulletinImageCx:F

.field private bulletinImageCy:F

.field private bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

.field private final buttonCurrent:Landroid/graphics/RectF;

.field public final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private final closeAnimation:Landroid/animation/ObjectAnimator;

.field private closeAnimationCompleted:Z

.field private closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

.field private closeAnimationStarted:Z

.field private closeProgress:F

.field private globalBlurBitmap:Landroid/graphics/Bitmap;

.field private globalBlurBitmapPaint:Landroid/graphics/Paint;

.field private isDestroyed:Z

.field private isReady:Z

.field public final key:Ljava/lang/String;

.field private linearGradient:Landroid/graphics/LinearGradient;

.field public final messageObject:Lorg/telegram/messenger/MessageObject;

.field private offsetX:I

.field private offsetY:I

.field private final onFinish:Ljava/lang/Runnable;

.field private final openAnimation:Landroid/animation/ObjectAnimator;

.field private openAnimationCompleted:Z

.field private openProgress:F

.field private final paintBubbleBg:Landroid/graphics/Paint;

.field public final parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

.field private final path:Landroid/graphics/Path;

.field private selectedIndex:I

.field private final shaderMatrix:Landroid/graphics/Matrix;

.field private final shadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$8Z9MZgUrtxMJvC9eXyjNKXqsksI(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->lambda$new$0(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PAFyaQFd6X8Fgmz198kbRU6nHf4(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->drawBubble(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFdbEg5B8-rng8gyNxj41ZbRLAs(ZFFLandroid/view/animation/Interpolator;F)F
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->lambda$interpolator$1(ZFFLandroid/view/animation/Interpolator;F)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpCords:[I

    new-instance v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$2;

    const-string v1, "openFactor"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-instance v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$3;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->CLOSE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/List;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationCompleted:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationStarted:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->OPEN_FACTOR:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    new-array v4, v1, [F

    aput v3, v4, v0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x230

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->CLOSE_FACTOR:Landroid/util/Property;

    new-array v4, v1, [F

    aput v3, v4, v0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xf0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimation:Landroid/animation/ObjectAnimator;

    iput-object p5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onFinish:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p5

    iput-object p5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->key:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x5

    invoke-static {p5, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    new-array p4, p4, [Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    iput-object p4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    :goto_0
    iget-object p4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length p5, p4

    if-ge v0, p5, :cond_0

    new-instance p5, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p5, p0, v2, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;J)V

    aput-object p5, p4, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHideSideButtonByQuickShare(Z)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->updateColors()V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimation:Landroid/animation/ObjectAnimator;

    sget-object p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->initBulletin()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeImpl()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/animation/Interpolator;III)Landroid/view/animation/Interpolator;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->interpolator(Landroid/view/animation/Interpolator;III)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/view/animation/Interpolator;IIIZ)Landroid/view/animation/Interpolator;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->interpolator(Landroid/view/animation/Interpolator;IIIZ)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    return p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateOpeningAnimationPositions()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    return p1
.end method

.method private arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZ)V
    .locals 7

    .line 0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZ)V

    return-void
.end method

.method private arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZ)V
    .locals 2

    .line 0
    sub-float/2addr p4, p3

    const/high16 v0, 0x43b40000    # 360.0f

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    cmpl-float p5, p4, v1

    if-lez p5, :cond_1

    sub-float/2addr p4, v0

    goto :goto_0

    :cond_0
    cmpg-float p5, p4, v1

    if-gez p5, :cond_1

    add-float/2addr p4, v0

    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const/high16 v0, 0x43870000    # 270.0f

    cmpl-float p5, p5, v0

    if-lez p5, :cond_2

    if-eqz p6, :cond_2

    const/4 p5, 0x0

    iput-boolean p5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    :cond_2
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method

.method private buildPath(Landroid/graphics/Path;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZZ)V
    .locals 13

    move-object v7, p1

    move-object/from16 v8, p3

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateAngle(FFFF)F

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateAngle(FFFF)F

    move-result v6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v9

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZ)V

    const/high16 v10, -0x3d4c0000    # -90.0f

    const/high16 v11, 0x40000000    # 2.0f

    if-eqz p6, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v11

    add-float/2addr v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateAngle(FFFF)F

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_0
    const/high16 v12, -0x3d4c0000    # -90.0f

    :goto_0
    invoke-static {v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->reverseAngle(F)F

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZ)V

    if-nez p6, :cond_1

    iget v0, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    sget-object v6, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpRectF:Landroid/graphics/RectF;

    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v2, v0

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v12}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->reverseAngle(F)F

    move-result v3

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZ)V

    iget v0, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v11

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz p7, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateAngle(FFFF)F

    move-result v0

    move v10, v0

    :cond_2
    iget v0, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v10}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->reverseAngle(F)F

    move-result v4

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZ)V

    if-nez p7, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    invoke-static {v9}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->reverseAngle(F)F

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->arcTo(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZ)V

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private static calculateAngle(FFFF)F
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    float-to-double p0, p3

    float-to-double p2, p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static calculateC0(DDDD)D
    .locals 2

    mul-double v0, p0, p0

    mul-double p6, p6, v0

    sub-double/2addr p2, p6

    mul-double p4, p4, p0

    sub-double/2addr p2, p4

    return-wide p2
.end method

.method private static calculateC1(DDDDD)D
    .locals 4

    mul-double v0, p4, p4

    mul-double v2, p0, p0

    sub-double/2addr v0, v2

    mul-double p8, p8, v0

    sub-double/2addr p6, p8

    sub-double/2addr p6, p2

    sub-double/2addr p4, p0

    const-wide/16 p0, 0x0

    cmpl-double p2, p4, p0

    if-nez p2, :cond_0

    return-wide p0

    :cond_0
    div-double/2addr p6, p4

    return-wide p6
.end method

.method private static calculateC2(DDDDDD)D
    .locals 2

    sub-double v0, p8, p0

    sub-double/2addr p6, p2

    mul-double v0, v0, p6

    sub-double p6, p4, p0

    div-double/2addr v0, p6

    sub-double/2addr p10, v0

    sub-double/2addr p10, p2

    mul-double p2, p8, p8

    mul-double p6, p4, p8

    sub-double/2addr p2, p6

    mul-double p4, p4, p0

    add-double/2addr p2, p4

    mul-double p0, p0, p8

    sub-double/2addr p2, p0

    const-wide/16 p0, 0x0

    cmpl-double p4, p2, p0

    if-nez p4, :cond_0

    return-wide p0

    :cond_0
    div-double/2addr p10, p2

    return-wide p10
.end method

.method private calculateCords()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpCords:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v4, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v1, v0

    aget v1, v1, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetX:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetY:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetX:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSideButtonStartX()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetY:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSideButtonStartY()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float/2addr v2, v1

    add-float/2addr v3, v1

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-float/2addr v1, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleOffset:F

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->getBubbleWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v1, v0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->getBubbleWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private calculateOpeningAnimationPositions()V
    .locals 17

    move-object/from16 v8, p0

    sget-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->overshootCancel:Landroid/view/animation/Interpolator;

    iget v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->buttonJumpUp:Landroid/view/animation/Interpolator;

    iget v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    sget-object v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->buttonJumpDown:Landroid/view/animation/Interpolator;

    iget v4, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    iget-object v4, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    neg-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->BUBBLE_HEIGHT:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    add-float/2addr v3, v5

    sget-object v5, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->heightExpansion:Landroid/view/animation/Interpolator;

    iget v6, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v5, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->getBubbleWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->widthExpansion:Landroid/view/animation/Interpolator;

    iget v7, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v6, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v3, v5, v7}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v3

    mul-float v5, v2, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v7, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    add-float/2addr v7, v2

    const/high16 v9, -0x3ec00000    # -12.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleOffset:F

    add-float/2addr v9, v10

    iget-object v10, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float v5, v3, v5

    div-float/2addr v5, v4

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v6, v9}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v7, v5

    iget-object v5, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleStart:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v2

    sub-float/2addr v5, v1

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v0

    add-float/2addr v1, v6

    sget-object v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->bubbleY:Landroid/view/animation/Interpolator;

    iget v6, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v0, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v1, v1, v0

    sub-float/2addr v5, v1

    iget-object v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    sub-float v1, v7, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v5, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput v7, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->ballsRadius:Landroid/view/animation/Interpolator;

    iget v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    float-to-double v2, v2

    iget-object v5, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->findOtherLeg(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v5, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v6, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v4

    add-float v12, v9, v0

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v13, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v4

    add-float/2addr v13, v9

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v4

    add-float v15, v9, v0

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->findIntersectionWithGravity(FFFFFFZ)Landroid/graphics/PointF;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    iput-boolean v7, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    :cond_2
    :goto_1
    iget-object v9, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    sub-float v10, v3, v0

    sub-float v11, v1, v0

    add-float/2addr v3, v0

    add-float/2addr v1, v0

    invoke-virtual {v9, v10, v11, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v2

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v9, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v9, v2

    cmpl-float v2, v3, v9

    if-lez v2, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float v12, v2, v0

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    sub-float v13, v5, v2

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float v15, v2, v0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->findIntersectionWithGravity(FFFFFFZ)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_3

    :cond_4
    iput-boolean v7, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    :cond_5
    :goto_3
    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    sub-float v5, v3, v0

    sub-float v10, v1, v0

    add-float/2addr v3, v0

    add-float/2addr v1, v0

    invoke-virtual {v2, v5, v10, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_6

    iget-boolean v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    if-eqz v0, :cond_6

    iput-boolean v7, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    :cond_6
    iget-boolean v0, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    if-eqz v0, :cond_7

    iget-object v1, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->path:Landroid/graphics/Path;

    iget-object v2, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    iget-object v3, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget-object v4, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballLeft:Landroid/graphics/RectF;

    iget-object v5, v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballRight:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buildPath(Landroid/graphics/Path;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZZ)V

    :cond_7
    return-void
.end method

.method private closeImpl()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationStarted:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    new-instance v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;-><init>(Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable$DrawRunnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->BLUR_RADIUS:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->render(IIIF)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private drawBubble(Landroid/graphics/Canvas;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->draw(Landroid/graphics/Canvas;IZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static findIntersectionWithGravity(FFFFFFZ)Landroid/graphics/PointF;
    .locals 6

    sub-float/2addr p3, p0

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p4, p1

    float-to-double v4, p4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v1, p2, p5

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_4

    sub-float v1, p2, p5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-float p2, p2, p2

    mul-float p5, p5, p5

    sub-float p5, p2, p5

    mul-float v1, v0, v0

    add-float/2addr p5, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    div-float/2addr p5, v1

    mul-float v1, p5, p5

    sub-float/2addr p2, v1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p2, v1

    mul-float v1, p5, p3

    div-float/2addr v1, v0

    add-float/2addr p0, v1

    mul-float p5, p5, p4

    div-float/2addr p5, v0

    add-float/2addr p1, p5

    mul-float p4, p4, p2

    div-float/2addr p4, v0

    add-float p5, p0, p4

    mul-float p2, p2, p3

    div-float/2addr p2, v0

    sub-float p3, p1, p2

    sub-float/2addr p0, p4

    add-float/2addr p1, p2

    cmpl-float p2, p5, p0

    if-eqz p2, :cond_2

    cmpg-float p2, p5, p0

    if-gez p2, :cond_2

    if-eqz p6, :cond_1

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2

    :cond_2
    cmpl-float p2, p3, p1

    if-lez p2, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findOtherLeg(DD)D
    .locals 1

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    mul-double p0, p0, p0

    mul-double p2, p2, p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static findParabola(FFFFFFF)F
    .locals 24

    move/from16 v0, p0

    move/from16 v1, p2

    float-to-double v14, v0

    move/from16 v2, p1

    float-to-double v12, v2

    float-to-double v10, v1

    move/from16 v2, p3

    float-to-double v8, v2

    move/from16 v2, p4

    float-to-double v6, v2

    move/from16 v2, p5

    float-to-double v4, v2

    move-wide v2, v14

    move-wide/from16 v16, v4

    move-wide v4, v12

    move-wide/from16 v18, v6

    move-wide v6, v10

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v10, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    invoke-static/range {v2 .. v13}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateC2(DDDDDD)D

    move-result-wide v12

    move-wide/from16 v4, v18

    move-wide/from16 v6, v22

    move-wide v10, v12

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateC1(DDDDD)D

    move-result-wide v10

    move-wide v6, v10

    move-wide v8, v12

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateC0(DDDD)D

    move-result-wide v2

    move/from16 v4, p6

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v0

    add-double/2addr v12, v10

    add-double/2addr v12, v2

    double-to-float v0, v12

    return v0
.end method

.method private static fromTo(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method private initBulletin()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpCords:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v2, v1, v0

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-boolean v6, v5, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Bulletin$Layout;->getTopOffset()F

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/telegram/ui/Components/Bulletin$Layout;->getBottomOffset()F

    move-result v5

    neg-float v5, v5

    :goto_0
    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v1, v0

    int-to-float v0, v0

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinImageCx:F

    sub-float/2addr v4, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinImageCy:F

    return-void
.end method

.method private static interpolator(Landroid/view/animation/Interpolator;III)Landroid/view/animation/Interpolator;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->interpolator(Landroid/view/animation/Interpolator;IIIZ)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0
.end method

.method private static interpolator(Landroid/view/animation/Interpolator;IIIZ)Landroid/view/animation/Interpolator;
    .locals 0

    .line 0
    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    div-float/2addr p2, p3

    new-instance p3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda1;

    invoke-direct {p3, p4, p1, p2, p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$$ExternalSyntheticLambda1;-><init>(ZFFLandroid/view/animation/Interpolator;)V

    return-object p3
.end method

.method private static synthetic lambda$interpolator$1(ZFFLandroid/view/animation/Interpolator;F)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p4, p1

    sub-float/2addr p2, p1

    div-float/2addr p4, p2

    if-eqz p0, :cond_0

    invoke-static {p4, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    sub-float p0, v1, p0

    invoke-interface {p3, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v1, p0

    return v1

    :cond_0
    invoke-static {p4, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p0

    invoke-interface {p3, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3fa00000    # 1.25f

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustSaturationColorMatrix(Landroid/graphics/ColorMatrix;F)V

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_1

    :cond_2
    const v0, -0x41e66666    # -0.15f

    :goto_1
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->adjustBrightnessColorMatrix(Landroid/graphics/ColorMatrix;F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private onCloseAnimationEnd()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationCompleted:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private onOpenAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHideSideButtonByQuickShare(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private prepare()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->calculateCords()V

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isReady:Z

    return-void
.end method

.method private static reverseAngle(F)F
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    add-float/2addr p0, v1

    return p0

    :cond_0
    sub-float/2addr p0, v1

    return p0
.end method

.method private setIndex(I)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    if-ne p1, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->setSelected(ZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    aget-object v3, v3, v1

    if-eq p1, v1, :cond_3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->setFullVisible(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateColors()V
    .locals 13

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v9, v2

    const v2, 0xffffff

    and-int/2addr v2, v0

    filled-new-array {v0, v2}, [I

    move-result-object v10

    const/4 v0, 0x2

    new-array v11, v0, [F

    fill-array-data v11, :array_0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->linearGradient:Landroid/graphics/LinearGradient;

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public close(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeImpl()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p1

    instance-of v0, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeImpl()V

    return-void

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$1;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHideSideButtonByQuickShare(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->recycle()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 0
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->draw(Landroid/graphics/Canvas;IZ)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IZ)V
    .locals 24

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isReady:Z

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->prepare()V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v13, 0x2

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v1, v5, v4, v7, v6}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setBounds(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    sget-object v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->closeAlpha:Landroid/view/animation/Interpolator;

    iget v5, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    invoke-interface {v4, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float v4, v2, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->draw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->closeAvatarAlpha:Landroid/view/animation/Interpolator;

    iget v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    invoke-interface {v1, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v6, v2, v1

    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->closeAvatarPosition:Landroid/view/animation/Interpolator;

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    sub-int/2addr v2, v13

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sget v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    sget v5, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->GAP:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v4, v4, v2

    int-to-float v2, v4

    add-float v15, v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinImageCx:F

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinImageCy:F

    add-float v5, v15, v3

    div-float v19, v5, v14

    iget-object v5, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bulletinLayout:Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lorg/telegram/ui/Components/Bulletin$Layout;->top:Z

    if-eqz v5, :cond_1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sget v7, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->CLOSE_AVATAR_JUMP_HEIGHT:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    :goto_0
    move/from16 v20, v5

    goto :goto_1

    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sget v7, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->CLOSE_AVATAR_JUMP_HEIGHT:I

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    goto :goto_0

    :goto_1
    invoke-static {v15, v3, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v5

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v21, v1

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->findParabola(FFFFFFF)F

    move-result v4

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v7

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    aget-object v1, v1, v2

    move-object/from16 v2, p1

    move v3, v5

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->drawBlurredAvatar(Landroid/graphics/Canvas;FFFF)V

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_4

    iget v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeProgress:F

    sub-float/2addr v2, v1

    :goto_2
    move v15, v2

    goto :goto_3

    :cond_4
    move/from16 v1, p2

    int-to-float v1, v1

    div-float v2, v1, v3

    goto :goto_2

    :goto_3
    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->bgScale:Landroid/view/animation/Interpolator;

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const v4, 0x3d99999a    # 0.075f

    invoke-static {v2, v4, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->fromTo(FFF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->linearGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->bgOpacity:Landroid/view/animation/Interpolator;

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v2, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v2, v2, v3

    mul-float v2, v2, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpRectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/RectF;->inset(FF)V

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    mul-float v3, v3, v15

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    const/4 v11, 0x1

    if-nez v1, :cond_5

    sget-object v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->buttonRotationUp:Landroid/view/animation/Interpolator;

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->buttonRotationDown:Landroid/view/animation/Interpolator;

    iget v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3de00000    # -40.0f

    mul-float v1, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v12, v1, v3, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSideButtonStartX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getSideButtonStartY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1, v12, v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->drawSideButton(Landroid/graphics/Canvas;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->ballsAllowed:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v14

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v14

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    invoke-virtual {v12, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->buttonCurrent:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->paintBubbleBg:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_4
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->avatarOvershootCancel:Landroid/view/animation/Interpolator;

    iget v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v2, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float v1, v1, v2

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->avatar1:Landroid/view/animation/Interpolator;

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v14

    sub-float v16, v2, v1

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->avatar2:Landroid/view/animation/Interpolator;

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v14

    sub-float v17, v2, v1

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->avatar3:Landroid/view/animation/Interpolator;

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openProgress:F

    invoke-interface {v3, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v14

    sub-float v18, v2, v1

    const/16 v19, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v13, :cond_10

    const/4 v9, 0x0

    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length v2, v1

    if-ge v9, v2, :cond_f

    if-nez v10, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    if-eq v9, v2, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v22, v9

    move/from16 v20, v10

    const/16 v23, 0x1

    goto/16 :goto_c

    :cond_9
    :goto_8
    if-ne v10, v11, :cond_a

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    if-eq v9, v2, :cond_a

    goto :goto_7

    :cond_a
    int-to-float v2, v9

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v1, v3

    sub-float/2addr v2, v1

    if-ne v9, v13, :cond_b

    move/from16 v20, v16

    goto :goto_a

    :cond_b
    if-eq v9, v11, :cond_d

    const/4 v1, 0x3

    if-ne v9, v1, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v20, v18

    goto :goto_a

    :cond_d
    :goto_9
    move/from16 v20, v17

    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    sget v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->GAP:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float v7, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_EXTERNAL:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sget v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_EXTERNAL:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    if-ne v9, v2, :cond_e

    iget-boolean v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationStarted:Z

    if-eqz v2, :cond_e

    const/16 v21, 0x1

    goto :goto_b

    :cond_e
    const/16 v21, 0x0

    :goto_b
    move-object/from16 v2, p1

    move/from16 v22, v9

    move/from16 v9, v20

    move/from16 v20, v10

    move v10, v15

    const/16 v23, 0x1

    move/from16 v11, v21

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->draw(Landroid/graphics/Canvas;FFFFFFFFZ)V

    :goto_c
    add-int/lit8 v9, v22, 0x1

    move/from16 v10, v20

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_f
    move/from16 v20, v10

    const/16 v23, 0x1

    add-int/lit8 v10, v20, 0x1

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_10
    return-void
.end method

.method public getBlurBitmapPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->globalBlurBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBubbleWidth()I
    .locals 3

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    sget v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->GAP:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length v2, v2

    mul-int v0, v0, v2

    sub-int/2addr v0, v1

    sget v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->PADDING_H:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedDialogId()J
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->selectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    aget-object v0, v1, v0

    iget-wide v0, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->dialogId:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimationStarted:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimation:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onOpenAnimationEnd()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->closeAnimation:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->onCloseAnimationEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onTouchMoveEvent(FF)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->openAnimationCompleted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    iget v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetX:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->offsetY:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->PADDING_H:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->GAP:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sub-float/2addr p1, v0

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    sget v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->GAP:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_EXTERNAL:I

    add-int/lit8 v0, v0, 0x15

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->bubbleCurrent:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->avatarCells:[Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->setIndex(I)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
