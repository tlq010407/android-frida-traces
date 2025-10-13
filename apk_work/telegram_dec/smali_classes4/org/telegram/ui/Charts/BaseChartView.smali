.class public abstract Lorg/telegram/ui/Charts/BaseChartView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Charts/ChartPickerDelegate$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;,
        Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;
    }
.end annotation


# static fields
.field protected static final ANIMATE_PICKER_SIZES:Z

.field private static final BOTTOM_SIGNATURE_OFFSET:I

.field public static final BOTTOM_SIGNATURE_START_ALPHA:I

.field private static final BOTTOM_SIGNATURE_TEXT_HEIGHT:I

.field private static final DP_1:I

.field private static final DP_12:I

.field private static final DP_2:I

.field private static final DP_5:I

.field private static final DP_6:I

.field private static final DP_8:I

.field public static final HORIZONTAL_PADDING:F

.field public static INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field private static final LANDSCAPE_END_PADDING:I

.field private static final PICKER_CAPTURE_WIDTH:I

.field protected static final PICKER_PADDING:I

.field private static final SELECTED_LINE_WIDTH:F

.field public static final SIGNATURE_TEXT_HEIGHT:I

.field public static final SIGNATURE_TEXT_SIZE:F

.field public static final USE_LINES:Z


# instance fields
.field private final ANIM_DURATION:I

.field alphaAnimator:Landroid/animation/ValueAnimator;

.field alphaBottomAnimator:Landroid/animation/ValueAnimator;

.field public animateLegentTo:Z

.field animateToMaxHeight:F

.field animateToMinHeight:F

.field protected animatedToPickerMaxHeight:F

.field protected animatedToPickerMinHeight:F

.field private bottomChartBitmap:Landroid/graphics/Bitmap;

.field private bottomChartCanvas:Landroid/graphics/Canvas;

.field bottomSignatureDate:Ljava/util/ArrayList;

.field protected bottomSignatureOffset:I

.field bottomSignaturePaint:Landroid/graphics/Paint;

.field bottomSignaturePaintAlpha:F

.field protected canCaptureChartSelection:Z

.field capturedTime:J

.field capturedX:I

.field capturedY:I

.field chartActiveLineAlpha:I

.field public chartArea:Landroid/graphics/RectF;

.field chartBottom:I

.field protected chartCaptured:Z

.field chartData:Lorg/telegram/ui/Charts/data/ChartData;

.field public chartEnd:F

.field public chartFullWidth:F

.field chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

.field public chartStart:F

.field public chartWidth:F

.field currentBottomSignatures:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

.field public currentMaxHeight:F

.field public currentMinHeight:F

.field protected dateSelectionListener:Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;

.field protected drawPointOnSelection:Z

.field emptyPaint:Landroid/graphics/Paint;

.field public enabled:Z

.field endXIndex:I

.field private exclusionRect:Landroid/graphics/Rect;

.field private exclusionRects:Ljava/util/List;

.field private heightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field hintLinePaintAlpha:I

.field horizontalLines:Ljava/util/ArrayList;

.field invalidatePickerChart:Z

.field landscape:Z

.field lastH:I

.field lastTime:J

.field lastW:I

.field lastX:I

.field lastY:I

.field public legendShowing:Z

.field public legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

.field linePaint:Landroid/graphics/Paint;

.field public lines:Ljava/util/ArrayList;

.field maxValueAnimator:Landroid/animation/Animator;

.field private minHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private minMaxUpdateStep:F

.field pathTmp:Landroid/graphics/Path;

.field pickerAnimator:Landroid/animation/Animator;

.field public pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

.field private pickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected pickerMaxHeight:F

.field protected pickerMinHeight:F

.field private pickerMinHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field pickerRect:Landroid/graphics/Rect;

.field pickerSelectorPaint:Landroid/graphics/Paint;

.field public pickerWidth:F

.field public pikerHeight:I

.field postTransition:Z

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field ripplePaint:Landroid/graphics/Paint;

.field protected selectedCoordinate:F

.field protected selectedIndex:I

.field selectedLinePaint:Landroid/graphics/Paint;

.field public selectionA:F

.field selectionAnimator:Landroid/animation/ValueAnimator;

.field private selectionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field selectionBackgroundPaint:Landroid/graphics/Paint;

.field private selectorAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

.field public sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

.field signaturePaint:Landroid/text/TextPaint;

.field signaturePaint2:Landroid/text/TextPaint;

.field signaturePaintAlpha:F

.field private startFromMax:F

.field private startFromMaxH:F

.field private startFromMin:F

.field private startFromMinH:F

.field startXIndex:I

.field superDraw:Z

.field thresholdMaxHeight:F

.field protected tmpI:I

.field protected tmpN:I

.field private final touchSlop:I

.field public transitionMode:I

.field public transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

.field unactiveBottomChartPaint:Landroid/graphics/Paint;

.field useAlphaSignature:Z

.field protected useMinHeight:Z

.field vibrationEffect:Landroid/os/VibrationEffect;

.field whiteLinePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$G87WbkafOTq5U0MWRAfQSTP79OU(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$onCheckChanged$5(Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O1lCwx-WXI0SnEBgbROnHI-Nexw(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$onCheckChanged$4(Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PMDRM0EEyMK3KNO3LtbM2gEtrR0(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$updateDates$3(Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T3QCHM6hA3ZUdXCIt6AYOrLQ7J0(Lorg/telegram/ui/Charts/BaseChartView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_UIUglac59bP3yG8-6uAeXTH42s(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$setMaxMinValue$2(Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l2-zuMU38wWH-2AefNKR5hI652s(Lorg/telegram/ui/Charts/BaseChartView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sput v1, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    sput v1, Lorg/telegram/ui/Charts/BaseChartView;->SELECTED_LINE_WIDTH:F

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sput v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_SIZE:F

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sput v2, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sput v2, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_TEXT_HEIGHT:I

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sput v3, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_START_ALPHA:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sput v3, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sput v3, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_CAPTURE_WIDTH:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->LANDSCAPE_END_PADDING:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_OFFSET:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_12:I

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_8:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_6:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_5:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_2:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sput v0, Lorg/telegram/ui/Charts/BaseChartView;->DP_1:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lorg/telegram/ui/Charts/BaseChartView;->USE_LINES:Z

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Charts/BaseChartView;->INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    const/16 v0, 0x190

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->ANIM_DURATION:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->drawPointOnSelection:Z

    const/high16 v1, 0x437a0000    # 250.0f

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateToMinHeight:F

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->thresholdMaxHeight:F

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->landscape:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->unactiveBottomChartPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->ripplePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pathTmp:Landroid/graphics/Path;

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->postTransition:Z

    new-instance v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/ChartPickerDelegate;-><init>(Lorg/telegram/ui/Charts/ChartPickerDelegate$Listener;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->superDraw:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$1;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$2;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->heightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->minHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$3;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Charts/BaseChartView$4;-><init>(Lorg/telegram/ui/Charts/BaseChartView;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectorAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastW:I

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastH:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->exclusionRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->exclusionRects:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->exclusionRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastTime:J

    iput-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    iput-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->init()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->touchSlop:I

    return-void
.end method

.method public static RoundedRect(Landroid/graphics/Path;FFFFFFZZZZ)Landroid/graphics/Path;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-gez v1, :cond_0

    const/4 p5, 0x0

    :cond_0
    cmpg-float v1, p6, v0

    if-gez v1, :cond_1

    const/4 p6, 0x0

    :cond_1
    sub-float p1, p3, p1

    sub-float/2addr p4, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p1, v1

    cmpl-float v3, p5, v2

    if-lez v3, :cond_2

    move p5, v2

    :cond_2
    div-float v2, p4, v1

    cmpl-float v3, p6, v2

    if-lez v3, :cond_3

    move p6, v2

    :cond_3
    mul-float v2, p5, v1

    sub-float/2addr p1, v2

    mul-float v1, v1, p6

    sub-float/2addr p4, v1

    add-float/2addr p2, p6

    invoke-virtual {p0, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float p2, p6

    if-eqz p8, :cond_4

    neg-float p3, p5

    invoke-virtual {p0, v0, p2, p3, p2}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p2, p5

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_0
    neg-float p2, p1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p2, p5

    if-eqz p7, :cond_5

    invoke-virtual {p0, p2, v0, p2, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {p0, v0, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_1
    invoke-virtual {p0, v0, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p10, :cond_6

    invoke-virtual {p0, v0, p6, p5, p6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0, p6}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {p0, p5, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    if-eqz p9, :cond_7

    neg-float p1, p6

    invoke-virtual {p0, p5, v0, p5, p1}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p5, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float p1, p6

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_3
    neg-float p1, p4

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onCheckChanged$4(Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onCheckChanged$5(Lorg/telegram/ui/Charts/view_data/LineViewData;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setMaxMinValue$2(Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    if-eq v0, p1, :cond_0

    iget v1, v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->fixedAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, p1, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    rsub-int v2, v2, 0xff

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateDates$3(Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    if-ne v1, p1, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->fixedAlpha:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private measureHeightThreshold()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    div-float/2addr v1, v0

    sget v0, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_SIZE:F

    mul-float v1, v1, v0

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->thresholdMaxHeight:F

    :cond_1
    :goto_0
    return-void
.end method

.method private measureSizes()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->landscape:Z

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->LANDSCAPE_END_PADDING:I

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartEnd:F

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v3, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateLineSignature()V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    sub-float/2addr v2, v1

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartEnd:F

    add-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureOffset:I

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->measureHeightThreshold()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setMaxMinValue(JJZ)V
    .locals 8

    .line 0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Charts/BaseChartView;->setMaxMinValue(JJZZZ)V

    return-void
.end method

.method private updateDates(I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentBottomSignatures:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->stepMax:I

    if-ge p1, v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->stepMin:I

    if-gt p1, v0, :cond_6

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentBottomSignatures:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->step:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double v4, v0, v2

    double-to-int v4, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    invoke-direct {v1, p1, v4, v0}, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;-><init>(III)V

    const/16 p1, 0xff

    iput p1, v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentBottomSignatures:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    iput-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentBottomSignatures:Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    if-nez v0, :cond_3

    iput p1, v1, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    iget v3, v2, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    iput v3, v2, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->fixedAlpha:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    new-instance p1, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;)V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2, p1}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Charts/BaseChartView$6;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Charts/BaseChartView$6;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method private updateLineSignature()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->oneDayPercentage:F

    mul-float v2, v2, v0

    div-float/2addr v1, v2

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Charts/BaseChartView;->updateDates(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public animateLegend(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend()V

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectorAnimatorEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public clearSelection()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    return-void
.end method

.method createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Charts/BaseChartView;->INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method protected createHorizontalLinesData(JJI)Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;
    .locals 12

    move-object v0, p0

    new-instance v11, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    iget-boolean v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget v7, v1, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    move-object v1, v11

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;-><init>(JJZFILandroid/text/TextPaint;Landroid/text/TextPaint;)V

    return-object v11
.end method

.method protected createLegendView()Lorg/telegram/ui/Charts/view_data/LegendSignatureView;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public abstract createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;
.end method

.method protected drawBottomLine(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v0, v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float/2addr v3, v0

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v3, v0, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->hintLinePaintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v1, v1, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    mul-float v1, v1, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v0, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    int-to-float v6, v1

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartEnd:F

    iget-object v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v2, :cond_4

    return-void

    :cond_4
    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    const-string v3, "0"

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawBottomSignature(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v1, v3, v1

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    :goto_2
    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v5, v6, :cond_d

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    iget v5, v5, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->alpha:I

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureDate:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;

    iget v6, v6, Lorg/telegram/ui/Charts/view_data/ChartBottomSignatureData;->step:I

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :cond_4
    iget v7, v0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureOffset:I

    sub-int/2addr v7, v8

    :goto_3
    rem-int v8, v7, v6

    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_5
    iget v8, v0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureOffset:I

    sub-int/2addr v8, v9

    :goto_4
    rem-int v9, v8, v6

    if-nez v9, :cond_6

    iget-object v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v9, v9, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v9, v9

    sub-int/2addr v9, v4

    if-ge v8, v9, :cond_7

    :cond_6
    move-object/from16 v14, p1

    goto/16 :goto_9

    :cond_7
    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignatureOffset:I

    add-int/2addr v7, v9

    add-int/2addr v8, v9

    iget v9, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v10, v10, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float v9, v9, v10

    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v9, v10

    :goto_5
    if-ge v7, v8, :cond_c

    if-ltz v7, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v10, v10, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v11, v10

    sub-int/2addr v11, v4

    if-lt v7, v11, :cond_9

    :cond_8
    move-object/from16 v14, p1

    goto/16 :goto_8

    :cond_9
    aget-wide v11, v10, v7

    aget-wide v13, v10, v2

    sub-long/2addr v11, v13

    long-to-float v11, v11

    array-length v12, v10

    sub-int/2addr v12, v4

    aget-wide v15, v10, v12

    sub-long v13, v15, v13

    long-to-float v10, v13

    div-float/2addr v11, v10

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    mul-float v11, v11, v10

    sub-float/2addr v11, v9

    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_OFFSET:I

    int-to-float v10, v10

    sub-float v10, v11, v10

    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-lez v12, :cond_8

    iget v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    sget v13, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    add-float v14, v12, v13

    cmpg-float v14, v10, v14

    if-gtz v14, :cond_8

    sget v14, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_START_ALPHA:I

    int-to-float v14, v14

    cmpg-float v15, v10, v14

    if-gez v15, :cond_a

    sub-float v10, v14, v10

    div-float/2addr v10, v14

    :goto_6
    sub-float v10, v3, v10

    iget-object v12, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    int-to-float v13, v5

    mul-float v13, v13, v10

    iget v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaintAlpha:F

    mul-float v13, v13, v10

    mul-float v13, v13, v1

    float-to-int v10, v13

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_a
    cmpl-float v14, v10, v12

    if-lez v14, :cond_b

    sub-float/2addr v10, v12

    div-float/2addr v10, v13

    goto :goto_6

    :cond_b
    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    int-to-float v12, v5

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaintAlpha:F

    mul-float v12, v12, v13

    mul-float v12, v12, v1

    float-to-int v12, v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Charts/data/ChartData;->getDayString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v12, v13

    sget v13, Lorg/telegram/ui/Charts/BaseChartView;->BOTTOM_SIGNATURE_TEXT_HEIGHT:I

    add-int/2addr v12, v13

    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_8
    add-int/2addr v7, v6

    goto/16 :goto_5

    :cond_c
    move-object/from16 v14, p1

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    goto/16 :goto_2

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method protected abstract drawChart(Landroid/graphics/Canvas;)V
.end method

.method protected drawHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V
    .locals 11

    iget-object v0, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    array-length v1, v0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    aget-wide v5, v0, v2

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    sub-long/2addr v5, v7

    long-to-float v0, v5

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v0, v5

    float-to-double v5, v0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double v9, v5, v7

    if-gez v9, :cond_0

    const v5, 0x3dcccccd    # 0.1f

    div-float/2addr v0, v5

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float/2addr v3, v4

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v5, v4, :cond_3

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->hintLinePaintAlpha:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v0, v3

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v0, v3

    iget-boolean v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    xor-int/2addr v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    iget-object v6, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    aget-wide v7, v6, v3

    long-to-float v6, v7

    iget v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v6, v7

    iget v8, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v8, v7

    div-float/2addr v6, v8

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    int-to-float v7, v4

    iget v8, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartEnd:F

    add-int/2addr v4, v2

    int-to-float v9, v4

    iget-object v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method drawPicker(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iput v2, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerWidth:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int v8, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v1, v3

    sub-int v9, v1, v2

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v4, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float v4, v4, v1

    add-float/2addr v4, v2

    float-to-int v4, v4

    iget v3, v3, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    mul-float v3, v3, v1

    add-float/2addr v3, v2

    float-to-int v3, v3

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v12, v11, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerStartOut:F

    mul-float v12, v12, v1

    add-float/2addr v12, v2

    float-to-int v12, v12

    iget v13, v11, Lorg/telegram/ui/Charts/view_data/TransitionParams;->pickerEndOut:F

    mul-float v1, v1, v13

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v13, v4

    sub-int/2addr v12, v4

    int-to-float v4, v12

    iget v11, v11, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v11, v6, v11

    mul-float v4, v4, v11

    add-float/2addr v13, v4

    float-to-int v4, v13

    int-to-float v12, v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v1, v1, v11

    add-float/2addr v12, v1

    float-to-int v3, v12

    :cond_1
    move v11, v3

    move v12, v4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v5, v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v1, v1, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    move v11, v3

    move v12, v4

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v3, :cond_e

    const/4 v2, 0x0

    if-nez v5, :cond_6

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v5, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorIn:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorOut:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v4, v5

    iget v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v4, v14

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v15, v5

    int-to-float v15, v15

    invoke-virtual {v7, v2, v4, v14, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v7, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawPickerChart(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_7
    iget-boolean v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    if-eqz v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Charts/BaseChartView;->drawPickerChart(Landroid/graphics/Canvas;)V

    iput-boolean v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    :cond_8
    :goto_3
    const/4 v2, 0x2

    if-nez v3, :cond_c

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    const/high16 v4, 0x437f0000    # 255.0f

    if-ne v3, v2, :cond_9

    sub-int v1, v8, v9

    add-int/2addr v1, v9

    shr-int/2addr v1, v10

    int-to-float v1, v1

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v15, v14, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    mul-float v5, v5, v15

    add-float/2addr v5, v3

    iget-object v15, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    iget v14, v14, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float v14, v6, v14

    mul-float v14, v14, v4

    float-to-int v4, v14

    invoke-virtual {v15, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v14, v3

    int-to-float v15, v8

    invoke-virtual {v7, v3, v4, v14, v15}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v4, v4, v13

    add-float/2addr v4, v6

    invoke-virtual {v7, v4, v6, v5, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_9
    if-ne v3, v10, :cond_b

    sub-int v1, v8, v9

    add-int/2addr v1, v9

    shr-int/2addr v1, v10

    int-to-float v1, v1

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerWidth:F

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v15, v14, Lorg/telegram/ui/Charts/view_data/TransitionParams;->xPercentage:F

    mul-float v16, v5, v15

    add-float v10, v3, v16

    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v17, v15, v17

    if-lez v17, :cond_a

    goto :goto_5

    :cond_a
    sub-float v15, v6, v15

    mul-float v16, v5, v15

    :goto_5
    iget v5, v14, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v16, v16, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    sub-float v5, v10, v16

    int-to-float v14, v9

    add-float v15, v10, v16

    int-to-float v13, v8

    invoke-virtual {v7, v5, v14, v15, v13}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v13, v13, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    mul-float v13, v13, v4

    float-to-int v4, v13

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    invoke-virtual {v7, v4, v6, v10, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_4

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartBitmap:Landroid/graphics/Bitmap;

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_c
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    int-to-float v13, v9

    sget v14, Lorg/telegram/ui/Charts/BaseChartView;->DP_12:I

    add-int v1, v12, v14

    int-to-float v4, v1

    int-to-float v15, v8

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->unactiveBottomChartPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v13

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v1, v11, v14

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v10

    :goto_7
    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->unactiveBottomChartPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_e
    int-to-float v3, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v2

    int-to-float v5, v8

    goto :goto_7

    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    iget v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v13, v4, v5

    sub-float/2addr v3, v13

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;->getPickerMaskBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    sub-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Charts/BaseChartView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v12, v9, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget-object v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->middlePickerArea:Landroid/graphics/Rect;

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pathTmp:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->DP_1:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    sget v13, Lorg/telegram/ui/Charts/BaseChartView;->DP_12:I

    add-int/2addr v3, v13

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    sget v6, Lorg/telegram/ui/Charts/BaseChartView;->DP_8:I

    int-to-float v6, v6

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v2

    move/from16 v22, v6

    move/from16 v23, v6

    invoke-static/range {v17 .. v27}, Lorg/telegram/ui/Charts/BaseChartView;->RoundedRect(Landroid/graphics/Path;FFFFFFZZZZ)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pathTmp:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v13

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v10

    int-to-float v5, v5

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v2

    invoke-static/range {v17 .. v27}, Lorg/telegram/ui/Charts/BaseChartView;->RoundedRect(Landroid/graphics/Path;FFFFFFZZZZ)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v13

    int-to-float v5, v1

    add-int/2addr v3, v10

    int-to-float v6, v3

    iget-object v14, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v10

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v13

    int-to-float v5, v1

    int-to-float v6, v3

    iget-object v10, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sget v10, Lorg/telegram/ui/Charts/BaseChartView;->DP_6:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->getMiddleCaptured()Lorg/telegram/ui/Charts/ChartPickerDelegate$CapturesData;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    add-int/2addr v2, v3

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->getLeftCaptured()Lorg/telegram/ui/Charts/ChartPickerDelegate$CapturesData;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->getRightCaptured()Lorg/telegram/ui/Charts/ChartPickerDelegate$CapturesData;

    move-result-object v4

    if-eqz v1, :cond_10

    iget-object v5, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget v6, Lorg/telegram/ui/Charts/BaseChartView;->DP_5:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v2

    int-to-float v10, v3

    iget v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate$CapturesData;->aValue:F

    mul-float v10, v10, v1

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->DP_2:I

    int-to-float v1, v1

    sub-float/2addr v10, v1

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v6, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_10
    if-eqz v4, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->DP_5:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    iget v4, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate$CapturesData;->aValue:F

    mul-float v3, v3, v4

    sget v4, Lorg/telegram/ui/Charts/BaseChartView;->DP_2:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Charts/BaseChartView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_11
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget-object v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->leftPickerArea:Landroid/graphics/Rect;

    sget v2, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_CAPTURE_WIDTH:I

    sub-int v3, v12, v2

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v12, v4

    invoke-virtual {v1, v3, v9, v12, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget-object v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->rightPickerArea:Landroid/graphics/Rect;

    sub-int v3, v11, v4

    add-int/2addr v11, v2

    invoke-virtual {v1, v3, v9, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    :cond_12
    return-void
.end method

.method protected abstract drawPickerChart(Landroid/graphics/Canvas;)V
.end method

.method protected drawSelection(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ltz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartActiveLineAlpha:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v5, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v4, v4, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    mul-float v4, v4, v3

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v4, v5

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v5, v1

    if-ge v0, v5, :cond_2

    aget v0, v1, v0

    mul-float v0, v0, v3

    sub-float/2addr v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v9, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, v0

    move v8, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->drawPointOnSelection:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_1

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData$Line;->y:[J

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    aget-wide v3, v2, v3

    long-to-float v2, v3

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v4, v5

    sget v5, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    iget v4, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    mul-float v4, v4, v5

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method protected drawSignaturesToHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V
    .locals 13

    iget-object v0, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    array-length v1, v0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    aget-wide v5, v0, v2

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    sub-long/2addr v5, v7

    long-to-float v0, v5

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v0, v5

    float-to-double v5, v0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpg-double v9, v5, v7

    if-gez v9, :cond_0

    const v5, 0x3dcccccd    # 0.1f

    div-float/2addr v0, v5

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionMode:I

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v4, v4, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    sub-float/2addr v3, v4

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne v5, v4, :cond_3

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->transitionParams:Lorg/telegram/ui/Charts/view_data/TransitionParams;

    iget v3, v3, Lorg/telegram/ui/Charts/view_data/TransitionParams;->progress:F

    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->hintLinePaintAlpha:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget v5, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    mul-float v5, v5, v0

    float-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v0, v3

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_HEIGHT:I

    sub-int/2addr v0, v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-boolean v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    xor-int/2addr v2, v4

    :goto_3
    if-ge v2, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v0

    iget-object v6, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    aget-wide v7, v6, v2

    long-to-float v6, v7

    iget v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v6, v7

    iget v8, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    sub-float/2addr v8, v7

    div-float/2addr v6, v8

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sget v11, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-int/2addr v4, v3

    int-to-float v12, v4

    iget-object v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    const/4 v6, 0x0

    move-object v4, p2

    move-object v5, p1

    move v7, v2

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->drawText(Landroid/graphics/Canvas;IIFFLandroid/text/TextPaint;)V

    iget-object v4, p2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->valuesStr2:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v8, v4, v11

    iget-object v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    const/4 v6, 0x1

    move-object v4, p2

    move-object v5, p1

    move v7, v2

    move v9, v12

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->drawText(Landroid/graphics/Canvas;IIFFLandroid/text/TextPaint;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public fillTransitionParams(Lorg/telegram/ui/Charts/view_data/TransitionParams;)V
    .locals 0

    return-void
.end method

.method public findMaxValue(II)J
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->segmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/SegmentTree;->rMaxQ(II)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    move-wide v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public findMinValue(II)J
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData$Line;->segmentTree:Lorg/telegram/messenger/SegmentTree;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/SegmentTree;->rMinQ(II)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    move-wide v1, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public getEndDate()J
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method protected getMinDistance()F
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    const v1, 0x3dcccccd    # 0.1f

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v0, v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    int-to-float v0, v0

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v2, v0

    cmpg-float v0, v2, v1

    if-gez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public getSelectedDate()J
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method public getStartDate()J
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method protected init()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->SELECTED_LINE_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->SIGNATURE_TEXT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->createLegendView()Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->whiteLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateColors()V

    return-void
.end method

.method protected initPickerMaxHeight()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v2, :cond_1

    iget-object v3, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-wide v3, v3, Lorg/telegram/ui/Charts/data/ChartData$Line;->maxValue:J

    long-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    iput v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    :cond_1
    if-eqz v2, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-wide v1, v1, Lorg/telegram/ui/Charts/data/ChartData$Line;->minValue:J

    long-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    goto :goto_0

    :cond_3
    return-void
.end method

.method public moveLegend()V
    .locals 2

    .line 0
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float v0, v0, v1

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    return-void
.end method

.method public moveLegend(F)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz v0, :cond_4

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ltz v2, :cond_4

    iget-object v1, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v3, v1

    if-ge v2, v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    aget-wide v4, v1, v2

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/Charts/data/ChartData;->yTooltipFormatter:I

    iget v8, v0, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    const/4 v0, 0x0

    move-object v1, v3

    move-wide v3, v4

    move-object v5, v6

    move v6, v0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setData(IJLjava/util/ArrayList;ZIF)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    mul-float v0, v0, v1

    sub-float/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartStart:F

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    add-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->DP_5:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/ui/Charts/BaseChartView;->DP_5:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    :goto_0
    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v0, p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onActionUp()V
    .locals 0

    return-void
.end method

.method public onCheckChanged()V
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lorg/telegram/ui/Charts/BaseChartView;->onPickerDataChanged(ZZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorOut:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorIn:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v2, :cond_3

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorIn:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    new-instance v4, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/LineViewData;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    iget-boolean v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-nez v2, :cond_5

    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorOut:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->alpha:F

    new-instance v4, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/LineViewData;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Charts/view_data/LineViewData;->animatorOut:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updatePickerMinMaxHeight()V

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v3, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v4, v3, v2

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/Charts/data/ChartData;->yTooltipFormatter:I

    iget v8, v0, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    const/4 v0, 0x1

    move-wide v3, v4

    move-object v5, v6

    move v6, v0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setData(IJLjava/util/ArrayList;ZIF)V

    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->superDraw:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->tick()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawBottomLine(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    :goto_0
    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Charts/BaseChartView;->drawHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawChart(Landroid/graphics/Canvas;)V

    :goto_1
    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpN:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Charts/BaseChartView;->drawSignaturesToHorizontalLines(Landroid/graphics/Canvas;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->tmpI:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawBottomSignature(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawPicker(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->drawSelection(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-boolean p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->landscape:Z

    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastW:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastH:I

    if-eq p1, p2, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastW:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastH:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sget p2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomChartCanvas:Landroid/graphics/Canvas;

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->sharedUiComponents:Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;->getPickerMaskBitmap(II)Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->measureSizes()V

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float p1, p1, v1

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->onPickerDataChanged(ZZZ)V

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->exclusionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sget v1, Lorg/telegram/ui/Charts/BaseChartView;->PICKER_PADDING:I

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pikerHeight:I

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    sub-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->exclusionRects:Ljava/util/List;

    invoke-static {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public onPickerDataChanged()V
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/telegram/ui/Charts/BaseChartView;->onPickerDataChanged(ZZZ)V

    return-void
.end method

.method public onPickerDataChanged(ZZZ)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v2, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateIndexes()V

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->findMinValue(II)J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->findMaxValue(II)J

    move-result-wide v3

    move-object v2, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/Charts/BaseChartView;->setMaxMinValue(JJZZZ)V

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget p2, p2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float p1, p1, p2

    sget p2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onPickerJumpTo(FFZ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Charts/data/ChartData;->findStartIndex(F)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Charts/data/ChartData;->findEndIndex(IF)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->findMaxValue(II)J

    move-result-wide v1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Charts/BaseChartView;->findMinValue(II)J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Charts/BaseChartView;->setMaxMinValue(JJZZZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateIndexes()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->enabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->uncapture(Landroid/view/MotionEvent;I)Z

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    if-eq v3, v4, :cond_d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_d

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->uncapture(Landroid/view/MotionEvent;I)Z

    return v4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->capture(III)Z

    move-result p1

    return p1

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastX:I

    sub-int v3, v0, v3

    iget v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastY:I

    sub-int v5, v2, v5

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v6}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->captured()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->move(III)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {v2, v1, p1, v4}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->move(III)Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v4

    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->canCaptureChartSelection:Z

    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedTime:J

    sub-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-lez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt p1, v3, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->touchSlop:I

    if-ge p1, v3, :cond_9

    :cond_8
    :goto_0
    const/4 v1, 0x1

    :cond_9
    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastX:I

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastY:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->selectXOnChart(II)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedX:I

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedX:I

    sub-int/2addr p1, v0

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedY:I

    sub-int/2addr v1, v2

    mul-int p1, p1, p1

    mul-int v1, v1, v1

    add-int/2addr p1, v1

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->touchSlop:I

    int-to-double v10, p1

    cmpl-double p1, v8, v10

    if-gtz p1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedTime:J

    sub-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-lez p1, :cond_c

    :cond_b
    iput-boolean v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    goto :goto_1

    :cond_c
    :goto_2
    return v4

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->uncapture(Landroid/view/MotionEvent;I)Z

    move-result p1

    if-eqz p1, :cond_e

    return v4

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    if-nez p1, :cond_f

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->uncapture()V

    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateLineSignature()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->onActionUp()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz p1, :cond_10

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->findMinValue(II)J

    move-result-wide v0

    :goto_3
    move-wide v8, v0

    goto :goto_4

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_3

    :goto_4
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Charts/BaseChartView;->findMaxValue(II)J

    move-result-wide v6

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/ui/Charts/BaseChartView;->setMaxMinValue(JJZZZ)V

    return v4

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedTime:J

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {v3, v0, v2, p1}, Lorg/telegram/ui/Charts/ChartPickerDelegate;->capture(III)Z

    move-result p1

    if-eqz p1, :cond_12

    return v4

    :cond_12
    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastX:I

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedX:I

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->lastY:I

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->capturedY:I

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartArea:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-ltz p1, :cond_13

    iget-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateLegentTo:Z

    if-nez p1, :cond_14

    :cond_13
    iput-boolean v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartCaptured:Z

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->selectXOnChart(II)V

    :cond_14
    return v4

    :cond_15
    return v1
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected runSmoothHaptic()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->vibrationEffect:Landroid/os/VibrationEffect;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline1;->m([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->vibrationEffect:Landroid/os/VibrationEffect;

    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->vibrationEffect:Landroid/os/VibrationEffect;

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    :cond_1
    return-void

    :array_0
    .array-data 8
        0x0
        0x2
    .end array-data
.end method

.method public selectDate(J)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v0, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionA:F

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget p2, p2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float p1, p1, p2

    sget p2, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    const/4 p1, 0x3

    const/4 p2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected selectXOnChart(II)V
    .locals 6

    iget p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartFullWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    mul-float v2, v2, v1

    sget v3, Lorg/telegram/ui/Charts/BaseChartView;->HORIZONTAL_PADDING:F

    sub-float/2addr v2, v3

    int-to-float p1, p1

    add-float/2addr p1, v2

    div-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    const/4 v1, 0x0

    const/4 v3, 0x1

    cmpg-float v4, p1, v1

    if-gez v4, :cond_1

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedCoordinate:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v1

    if-lez v4, :cond_2

    iget-object p1, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length p1, p1

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Charts/data/ChartData;->findIndex(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v4, v4, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget v0, v4, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    iget v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    add-int/2addr v4, v3

    aget v1, v1, v4

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    :cond_3
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    if-le p1, v0, :cond_4

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    :cond_4
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    if-ge p1, v0, :cond_5

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    :cond_5
    iget p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    if-eq p2, p1, :cond_7

    iput-boolean v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Charts/BaseChartView;->animateLegend(Z)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Charts/BaseChartView;->moveLegend(F)V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->dateSelectionListener:Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->getSelectedDate()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;->onDateSelected(J)V

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->runSmoothHaptic()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public setData(Lorg/telegram/ui/Charts/data/ChartData;)Z
    .locals 13

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    const-wide/16 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    iget-object v8, p1, Lorg/telegram/ui/Charts/data/ChartData;->lines:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Charts/data/ChartData$Line;

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Charts/BaseChartView;->createLineViewData(Lorg/telegram/ui/Charts/data/ChartData$Line;)Lorg/telegram/ui/Charts/view_data/LineViewData;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->clearSelection()V

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v6, v0, v6

    cmp-long v0, v6, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    :goto_1
    iput v5, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput v3, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->getMinDistance()F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->minDistance:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v6, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iget v7, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    sub-float v7, v6, v7

    iget v8, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->minDistance:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    sub-float/2addr v6, v8

    iput v6, v0, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, 0x1

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->measureSizes()V

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateIndexes()V

    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->findMinValue(II)J

    move-result-wide v1

    :cond_4
    move-wide v10, v1

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Charts/BaseChartView;->findMaxValue(II)J

    move-result-wide v8

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Charts/BaseChartView;->setMaxMinValue(JJZ)V

    iput v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    invoke-virtual {p0}, Lorg/telegram/ui/Charts/BaseChartView;->initPickerMaxHeight()V

    iget p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->yTooltipFormatter:I

    const/4 v0, 0x2

    if-eq p1, v4, :cond_6

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setSize(I)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setSize(I)V

    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateLineSignature()V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    const v0, 0x3f333333    # 0.7f

    iput v0, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    iput v3, p1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    iput v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    iput v5, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    :goto_5
    return v6
.end method

.method public setDateSelectionListener(Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->dateSelectionListener:Lorg/telegram/ui/Charts/BaseChartView$DateSelectionListener;

    return-void
.end method

.method public setHeader(Lorg/telegram/ui/Charts/view_data/ChartHeaderView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Charts/BaseChartView;->landscape:Z

    return-void
.end method

.method protected setMaxMinValue(JJZZZ)V
    .locals 14

    .line 0
    move-object v6, p0

    move-wide v1, p1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {p1 .. p2}, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->lookupHeight(J)J

    move-result-wide v3

    long-to-float v0, v3

    iget v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->thresholdMaxHeight:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    :cond_0
    long-to-float v0, v1

    iget v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMinHeight:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget v5, v0, Lorg/telegram/ui/Charts/data/ChartData;->yTickFormatter:I

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Charts/BaseChartView;->createHorizontalLinesData(JJI)Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->values:[J

    array-length v2, v1

    sub-int/2addr v2, v8

    aget-wide v2, v1, v2

    aget-wide v4, v1, v7

    const/4 v1, 0x0

    if-nez p7, :cond_8

    iget v9, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    sub-float/2addr v9, v10

    sub-long v10, v2, v4

    long-to-float v10, v10

    div-float v11, v9, v10

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v11, v12

    if-lez v12, :cond_2

    div-float v11, v10, v9

    :cond_2
    float-to-double v9, v11

    const-wide v11, 0x3fe6666666666666L    # 0.7

    cmpl-double v13, v9, v11

    if-lez v13, :cond_3

    const v9, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_3
    const-wide v11, 0x3fb999999999999aL    # 0.1

    cmpg-double v13, v9, v11

    if-gez v13, :cond_4

    const v9, 0x3cf5c28f    # 0.03f

    goto :goto_0

    :cond_4
    const v9, 0x3d3851ec    # 0.045f

    :goto_0
    long-to-float v10, v2

    iget v11, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :goto_1
    iget-boolean v11, v6, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v11, :cond_6

    long-to-float v11, v4

    iget v12, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMinHeight:F

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_6

    const/4 v10, 0x1

    :cond_6
    if-eqz v10, :cond_8

    iget-object v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    :cond_7
    iget v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iput v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->startFromMaxH:F

    iget v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    iput v10, v6, Lorg/telegram/ui/Charts/BaseChartView;->startFromMinH:F

    iput v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->startFromMax:F

    iput v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->startFromMin:F

    iput v9, v6, Lorg/telegram/ui/Charts/BaseChartView;->minMaxUpdateStep:F

    :cond_8
    long-to-float v2, v2

    iput v2, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    long-to-float v3, v4

    iput v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->animateToMinHeight:F

    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->measureHeightThreshold()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v9, v6, Lorg/telegram/ui/Charts/BaseChartView;->lastTime:J

    sub-long v9, v4, v9

    const-wide/16 v11, 0x140

    cmp-long v13, v9, v11

    if-gez v13, :cond_9

    if-nez p6, :cond_9

    return-void

    :cond_9
    iput-wide v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->lastTime:J

    iget-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    if-nez p5, :cond_b

    iput v2, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iput v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    iget-object v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xff

    iput v1, v0, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    return-void

    :cond_b
    iget-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_e

    iget-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_c
    iput v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->minMaxUpdateStep:F

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget v5, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget-object v9, v6, Lorg/telegram/ui/Charts/BaseChartView;->heightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v5, v2, v9}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-boolean v2, v6, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v2, :cond_d

    iget v2, v6, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    iget-object v5, v6, Lorg/telegram/ui/Charts/BaseChartView;->minHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v2, v3, v5}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_d
    iput-object v4, v6, Lorg/telegram/ui/Charts/BaseChartView;->maxValueAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :cond_e
    iget-object v2, v6, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v7, v2, :cond_10

    iget-object v3, v6, Lorg/telegram/ui/Charts/BaseChartView;->horizontalLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;

    if-eq v3, v0, :cond_f

    iget v4, v3, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->alpha:I

    iput v4, v3, Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;->fixedAlpha:I

    :cond_f
    add-int/2addr v7, v8

    goto :goto_2

    :cond_10
    new-instance v2, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Charts/BaseChartView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-virtual {p0, v1, v3, v2}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Charts/BaseChartView$5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Charts/BaseChartView$5;-><init>(Lorg/telegram/ui/Charts/BaseChartView;Lorg/telegram/ui/Charts/view_data/ChartHorizontalLinesData;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lorg/telegram/ui/Charts/BaseChartView;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected tick()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->minMaxUpdateStep:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateToMaxHeight:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMax:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMax:F

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    iput v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMax:F

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMaxH:F

    sub-float/2addr v2, v0

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMaxHeight:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->useMinHeight:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animateToMinHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMin:F

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->minMaxUpdateStep:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMin:F

    cmpl-float v2, v0, v3

    if-lez v2, :cond_3

    iput v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMin:F

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    goto :goto_1

    :cond_3
    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->startFromMinH:F

    sub-float/2addr v1, v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float v1, v1, v0

    add-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->currentMinHeight:F

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public updateColors()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint2:Landroid/text/TextPaint;

    iget-boolean v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->useAlphaSignature:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignatureAlpha:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartSignature:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartHintLine:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActiveLine:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerSelectorPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartActivePickerChart:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->unactiveBottomChartPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartInactivePickerChart:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectionBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->ripplePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartRipple:I

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    invoke-virtual {v0}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->recolor()V

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->hintLinePaintAlpha:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartActiveLineAlpha:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->signaturePaintAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->bottomSignaturePaintAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Charts/view_data/LineViewData;

    invoke-virtual {v1}, Lorg/telegram/ui/Charts/view_data/LineViewData;->updateColors()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendShowing:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->selectedIndex:I

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v1, v0, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->legendSignatureView:Lorg/telegram/ui/Charts/view_data/LegendSignatureView;

    aget-wide v4, v1, v2

    iget-object v6, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    iget v7, v0, Lorg/telegram/ui/Charts/data/ChartData;->yTooltipFormatter:I

    iget v8, v0, Lorg/telegram/ui/Charts/data/ChartData;->yRate:F

    const/4 v0, 0x0

    move-object v1, v3

    move-wide v3, v4

    move-object v5, v6

    move v6, v0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Charts/view_data/LegendSignatureView;->setData(IJLjava/util/ArrayList;ZIF)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->invalidatePickerChart:Z

    return-void
.end method

.method protected updateIndexes()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v1, v1, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Charts/data/ChartData;->findStartIndex(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    iget-object v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget v2, v2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Charts/data/ChartData;->findEndIndex(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->startXIndex:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartHeaderView:Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->chartData:Lorg/telegram/ui/Charts/data/ChartData;

    iget-object v2, v2, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v3, v2, v1

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->endXIndex:I

    aget-wide v1, v2, v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setDates(JJ)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Charts/BaseChartView;->updateLineSignature()V

    return-void
.end method

.method public updatePicker(Lorg/telegram/ui/Charts/data/ChartData;J)V
    .locals 9

    iget-object v0, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    array-length v0, v0

    const-wide/32 v1, 0x5265c00

    rem-long v1, p2, v1

    sub-long/2addr p2, v1

    const-wide/32 v1, 0x5265bff

    add-long/2addr v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v6, p1, Lorg/telegram/ui/Charts/data/ChartData;->x:[J

    aget-wide v7, v6, v3

    cmp-long v6, p2, v7

    if-lez v6, :cond_0

    move v5, v3

    :cond_0
    cmp-long v6, v1, v7

    if-lez v6, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerDelegate:Lorg/telegram/ui/Charts/ChartPickerDelegate;

    iget-object p1, p1, Lorg/telegram/ui/Charts/data/ChartData;->xPercentage:[F

    aget p3, p1, v5

    iput p3, p2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerStart:F

    aget p1, p1, v4

    iput p1, p2, Lorg/telegram/ui/Charts/ChartPickerDelegate;->pickerEnd:F

    return-void
.end method

.method protected updatePickerMinMaxHeight()V
    .locals 12

    sget-boolean v0, Lorg/telegram/ui/Charts/BaseChartView;->ANIMATE_PICKER_SIZES:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Charts/view_data/LineViewData;

    iget-boolean v8, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->enabled:Z

    if-eqz v8, :cond_2

    iget-object v9, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-wide v9, v9, Lorg/telegram/ui/Charts/data/ChartData$Line;->maxValue:J

    cmp-long v11, v9, v5

    if-lez v11, :cond_2

    move-wide v5, v9

    :cond_2
    if-eqz v8, :cond_1

    iget-object v7, v7, Lorg/telegram/ui/Charts/view_data/LineViewData;->line:Lorg/telegram/ui/Charts/data/ChartData$Line;

    iget-wide v7, v7, Lorg/telegram/ui/Charts/data/ChartData$Line;->minValue:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_1

    move-wide v3, v7

    goto :goto_0

    :cond_3
    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v3, v7

    if-eqz v0, :cond_4

    long-to-float v0, v3

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMinHeight:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    :cond_4
    cmp-long v0, v5, v1

    if-lez v0, :cond_7

    long-to-float v0, v5

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    :cond_5
    long-to-float v0, v5

    iput v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    iget-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMaxHeight:F

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMaxHeight:F

    iget-object v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeight:F

    iget v3, p0, Lorg/telegram/ui/Charts/BaseChartView;->animatedToPickerMinHeight:F

    iget-object v4, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerMinHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/ui/Charts/BaseChartView;->createAnimator(FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-object v0, p0, Lorg/telegram/ui/Charts/BaseChartView;->pickerAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_7
    return-void
.end method
