.class public Lorg/telegram/ui/Stories/recorder/FlashViews;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;,
        Lorg/telegram/ui/Stories/recorder/FlashViews$ImageViewInvertable;
    }
.end annotation


# static fields
.field public static final COLORS:[I


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field public final backgroundView:Landroid/view/View;

.field private color:I

.field private final context:Landroid/content/Context;

.field public final foregroundView:Landroid/view/View;

.field private gradient:Landroid/graphics/RadialGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field public intensity:F

.field private invert:F

.field private final invertableViews:Ljava/util/ArrayList;

.field private lastColor:I

.field private lastHeight:I

.field private lastInvert:F

.field private lastWidth:I

.field private final paint:Landroid/graphics/Paint;

.field public warmth:F

.field private final windowManager:Landroid/view/WindowManager;

.field private final windowView:Landroid/view/View;

.field private final windowViewParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$3ObZ-RIGMTKpzqpmiu2tFCI0xNU(Lorg/telegram/ui/Stories/recorder/FlashViews;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->lambda$flash$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KhwyhqbluvfMfmdkYhyrOcH6HY(Lorg/telegram/ui/Stories/recorder/FlashViews;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->lambda$flashTo$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCsC2CHYSBJsgslvuQvVz0PRsus(Lorg/telegram/ui/Stories/recorder/FlashViews;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->lambda$flash$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R08TOrHUpyDLFbpjF4ZVOXU5rzw(Lorg/telegram/ui/Stories/recorder/FlashViews;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->lambda$flash$3(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YsGBG9l6lJie_KgZSTuJU0GjGJQ(Lorg/telegram/ui/Stories/recorder/FlashViews;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->lambda$flash$2(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const v0, -0x11174

    const v1, -0x732001

    const/4 v2, -0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->warmth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensity:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradientMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->paint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowView:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowViewParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/FlashViews$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews$1;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/FlashViews$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews$2;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/FlashViews;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->invalidateGradient()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/FlashViews;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradientMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/FlashViews;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/FlashViews;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->update()V

    return-void
.end method

.method private flashTo(FJLjava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->update()V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/FlashViews$3;

    invoke-direct {v1, p0, p1, p4}, Lorg/telegram/ui/Stories/recorder/FlashViews$3;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;FLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getColor(F)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_0

    div-float/2addr p0, v3

    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p0

    const v1, -0x732001

    invoke-static {v1, v0, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0

    :cond_0
    sub-float/2addr p0, v3

    div-float/2addr p0, v3

    invoke-static {p0, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p0

    const v1, -0x11174

    invoke-static {v0, v1, p0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method private intensityValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensity:F

    return v0
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private invalidateGradient()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastColor:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastHeight:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastInvert:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ba3d70a    # 0.005f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_0
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastColor:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastHeight:I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    iput v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastInvert:F

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    if-lez v5, :cond_2

    if-lez v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    const v7, 0x3f666666    # 0.9f

    const v8, 0x3faccccd    # 1.35f

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40000000    # 2.0f

    if-lt v4, v5, :cond_1

    new-instance v4, Landroid/graphics/RadialGradient;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    int-to-float v13, v5

    mul-float v14, v13, v10

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastHeight:I

    int-to-float v13, v10

    mul-float v15, v13, v9

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v12

    mul-float v5, v5, v8

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    sub-float/2addr v12, v8

    mul-float v16, v5, v12

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v5, v8

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline0;->m()Landroid/graphics/ColorSpace$Named;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v13

    const/4 v6, 0x0

    invoke-static {v5, v9, v10, v6, v13}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline2;->m(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Color;)J

    move-result-wide v5

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    invoke-static {v12}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-static {v9, v10, v13, v11, v8}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline2;->m(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Color;)J

    move-result-wide v8

    new-array v10, v2, [J

    aput-wide v5, v10, v3

    aput-wide v8, v10, v1

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    const v6, 0x3e6147ae    # 0.22f

    invoke-static {v7, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    new-array v2, v2, [F

    aput v5, v2, v3

    aput v11, v2, v1

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[J[FLandroid/graphics/Shader$TileMode;)V

    :goto_0
    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradient:Landroid/graphics/RadialGradient;

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/graphics/RadialGradient;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    int-to-float v6, v5

    mul-float v21, v6, v10

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastHeight:I

    int-to-float v10, v6

    mul-float v22, v10, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v12

    mul-float v5, v5, v8

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    sub-float/2addr v12, v6

    mul-float v23, v5, v12

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-static {v5, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    filled-new-array {v5, v6}, [I

    move-result-object v24

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    const v6, 0x3e6147ae    # 0.22f

    invoke-static {v7, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    new-array v2, v2, [F

    aput v5, v2, v3

    aput v11, v2, v1

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v20, v4

    move-object/from16 v25, v2

    invoke-direct/range {v20 .. v26}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->invalidate()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$flash$0(Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0xf0

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$flash$1(Ljava/lang/Runnable;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setScreenBrightness(F)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x50

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$flash$2(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$flash$3(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Lorg/telegram/messenger/Utilities$Callback;)V

    const-wide/16 v1, 0x140

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$flashTo$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->update()V

    return-void
.end method

.method private setScreenBrightness(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowViewParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->windowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private update()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    invoke-interface {v1, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;->setInvert(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;

    invoke-interface {v1}, Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensityValue()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public add(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invert:F

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;->setInvert(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawGradient(Landroid/graphics/Canvas;Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradient:Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->invalidateGradient()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastWidth:I

    int-to-float v3, p2

    iget p2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->lastHeight:I

    int-to-float v4, p2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->foregroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flash(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensityValue()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setScreenBrightness(F)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/FlashViews;Lorg/telegram/messenger/Utilities$Callback;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x140

    invoke-direct {p0, p1, v1, v2, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method public flashIn(Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensityValue()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setScreenBrightness(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x140

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method public flashOut()V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->setScreenBrightness(F)V

    const-wide/16 v0, 0xf0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method public previewEnd()V
    .locals 4

    const-wide/16 v0, 0xf0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method public previewStart()V
    .locals 4

    const-wide/16 v0, 0xf0

    const/4 v2, 0x0

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashTo(FJLjava/lang/Runnable;)V

    return-void
.end method

.method public remove(Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->invertableViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->intensity:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->update()V

    return-void
.end method

.method public setWarmth(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->warmth:F

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->getColor(F)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/FlashViews;->color:I

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->invalidateGradient()V

    return-void
.end method
