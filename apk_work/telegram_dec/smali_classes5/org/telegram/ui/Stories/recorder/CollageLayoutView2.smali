.class public abstract Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ItemOptions$ScrimView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;
    }
.end annotation


# instance fields
.field private final animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

.field private attached:Z

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private blurRenderNode:Ljava/lang/Object;

.field private cameraThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private cameraThumbVisible:Z

.field public cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewBlurRenderNode:Ljava/lang/Object;

.field private cancelGestures:Ljava/lang/Runnable;

.field private final clipPath:Landroid/graphics/Path;

.field private final containerView:Landroid/widget/FrameLayout;

.field private currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

.field public currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

.field public dx:F

.field public dy:F

.field private fastSeek:Z

.field private final gradient:Landroid/graphics/LinearGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientWidth:I

.field private final highlightPaint:Landroid/graphics/Paint;

.field private final highlightPath:Landroid/graphics/Path;

.field public isMuted:Z

.field private lastPausedPosition:J

.field public ldx:F

.field public ldy:F

.field private final lefts:[F

.field public longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

.field private needsBlur:Z

.field public nextPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

.field private onCameraThumbClick:Ljava/lang/Runnable;

.field public onLongPressPart:Ljava/lang/Runnable;

.field private onResetState:Ljava/lang/Runnable;

.field public final parts:Ljava/util/ArrayList;

.field private playing:Z

.field public pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

.field private preview:Z

.field private previewStartTime:J

.field private previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

.field public final qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

.field private final radii:[F

.field private final rect:Landroid/graphics/RectF;

.field public final removingParts:Ljava/util/ArrayList;

.field private renderNode:Ljava/lang/Object;

.field public reordering:Z

.field public reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

.field public reorderingTouch:Z

.field private final resetReordering:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private restorePositionOnPlaying:Z

.field private final rights:[F

.field private final syncRunnable:Ljava/lang/Runnable;

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field public tx:F

.field public ty:F


# direct methods
.method public static synthetic $r8$lambda$BlCGMwGoirt0UuyA9LBLKQe06xM()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$onLongPress$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$P7qOu7nozUq6fnq-FdYd1EmnXjk(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$SJ124Ywxc16BbB-CTiqaVZdd9Yw(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPress()V

    return-void
.end method

.method public static synthetic $r8$lambda$TUL9p2q7ODcdeeAdsx5UxP2caqE(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$onLongPress$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$W5h0-XJbgKcU3XkNeCQ_v9qDxnA(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$onLongPress$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$g7mGkjR8GokObcvuvZCBEYzh3hY(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$onLongPress$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$gyrTHl3VvbNgnBvzKgKgE5Hkh1w(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$new$6(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hICzZDaoQf58xK02j4568ahW3K0(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$new$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$kGTLtM34PtYgDB87yEvaFQmveu0(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lambda$onLongPress$1(Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v1, "."

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->removingParts:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPath:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->resetReordering:Ljava/lang/Runnable;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v11, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    new-instance v16, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x5

    new-array v0, v6, [Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x0

    aput-object v11, v0, v4

    aput-object v13, v0, v10

    const/4 v1, 0x2

    aput-object v14, v0, v1

    const/4 v1, 0x3

    aput-object v15, v0, v1

    const/4 v11, 0x4

    aput-object v16, v0, v11

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v14, 0x140

    move-object v0, v13

    move-object/from16 v1, p0

    const/4 v11, 0x0

    move-wide v4, v14

    const/4 v14, 0x5

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    new-array v0, v14, [F

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    new-array v0, v14, [F

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clipPath:Landroid/graphics/Path;

    iput-boolean v10, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbVisible:Z

    iput-boolean v10, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    iput-boolean v10, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->restorePositionOnPlaying:Z

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    move-object/from16 v0, p3

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->containerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p4

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v0, -0xe0e0e1

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    invoke-virtual {v0, v1, v11}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setPart(Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;Z)V

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setCurrent(Z)V

    iget-boolean v1, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->attached:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v0, 0x0

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->nextPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientWidth:I

    int-to-float v15, v2

    filled-new-array {v11, v0, v0, v11}, [I

    move-result-object v17

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object v12, v1

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradient:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v7, v11}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->layoutOut(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->layout(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    return p0
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;F)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v4

    invoke-virtual {p1, v3, v5, v6, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int p3, v0

    int-to-float p3, p3

    div-float/2addr p3, v4

    neg-int v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p4

    const/high16 p3, -0x1000000

    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V
    .locals 7

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    mul-float v4, v4, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v5

    mul-float v3, v3, v5

    invoke-virtual {v0, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clipPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_5

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v1, p3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->textureView:Landroid/view/TextureView;

    if-eqz v1, :cond_3

    iget-boolean v3, p3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->textureViewReady:Z

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1, p2, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, p3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez p3, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbVisible:Z

    if-eqz v1, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p3, p2, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0, p1, p3, p2, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_5
    const v3, 0x3ecccccd    # 0.4f

    if-eqz p3, :cond_6

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$300(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    sget-boolean v4, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-eqz v4, :cond_c

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v1, :cond_a

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbVisible:Z

    if-eqz v4, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_8

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$300(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Z

    move-result p3

    if-nez p3, :cond_9

    :cond_8
    const v2, 0x3ecccccd    # 0.4f

    :cond_9
    invoke-direct {p0, p1, v1, p2, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;F)V

    goto/16 :goto_3

    :cond_a
    if-eqz p3, :cond_b

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$300(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Z

    move-result p3

    if-nez p3, :cond_2

    :cond_b
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_c
    iget-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    xor-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraNeedsBlur(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraViewBlurRenderNode:Ljava/lang/Object;

    if-eqz p3, :cond_d

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p3, v1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p3

    if-eqz p3, :cond_d

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraViewBlurRenderNode:Ljava/lang/Object;

    invoke-static {p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/RenderNode;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/RenderNode;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-static {p1, p3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    const/high16 p3, 0x64000000

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_d
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, p3, p2, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RectF;F)V

    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p3, :cond_e

    iget-object p3, p3, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object p3, p3, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    cmpl-float p3, p3, v2

    if-lez p3, :cond_e

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object p3, p3, Lorg/telegram/messenger/camera/CameraView;->blurredStubView:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p3, p2, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RectF;F)V

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method private drawView(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RectF;F)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p2, Landroid/view/TextureView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/TextureView;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    cmpl-float v0, p4, v1

    if-lez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float v0, v0, p4

    const/high16 p4, -0x1000000

    invoke-static {p4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_6
    return-void
.end method

.method private finishNode(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline7;->m(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurRenderNode:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {p1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V

    invoke-static {p1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline8;->m(Landroid/graphics/RenderNode;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$6(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$802(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;J)J

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPosition()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getMainPart()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v3, v8

    mul-float v7, v7, v3

    float-to-long v7, v7

    add-long/2addr v5, v7

    :goto_0
    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getDuration()J

    move-result-wide v13

    add-long v10, v1, v5

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v12

    iget-wide v3, v12, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    sub-long v3, v10, v3

    const-wide/16 v15, 0x0

    move-wide v11, v3

    move-wide v3, v13

    invoke-static/range {v11 .. v16}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v10

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v12, :cond_1

    iget-boolean v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-eqz v12, :cond_2

    :cond_1
    long-to-float v12, v10

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    long-to-float v14, v3

    mul-float v13, v13, v14

    cmpl-float v13, v12, v13

    if-lez v13, :cond_2

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v13

    iget v13, v13, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    mul-float v13, v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v12

    iget v12, v12, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    long-to-float v3, v3

    mul-float v12, v12, v3

    float-to-long v12, v12

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    mul-float v4, v4, v3

    float-to-long v3, v4

    move-wide/from16 v17, v10

    move-wide/from16 v19, v12

    move-wide/from16 v21, v3

    invoke-static/range {v17 .. v22}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v3

    iget-object v10, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v10}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->isPlaying()Z

    move-result v10

    if-eq v10, v9, :cond_4

    if-eqz v9, :cond_3

    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v9}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play()V

    goto :goto_3

    :cond_3
    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v9}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pause()V

    :cond_4
    :goto_3
    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isMuted:Z

    if-nez v10, :cond_6

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v10

    iget-boolean v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-nez v10, :cond_6

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v10

    iget v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v9, v10}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setVolume(F)V

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$800(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_7

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$800(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)J

    move-result-wide v9

    goto :goto_6

    :cond_7
    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v9}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getCurrentPosition()J

    move-result-wide v9

    :goto_6
    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x1c2

    cmp-long v13, v9, v11

    if-lez v13, :cond_8

    invoke-static {v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$800(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gez v13, :cond_9

    iget-object v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v8, v3, v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$802(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;J)J

    move-result-wide v3

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->fastSeek:Z

    new-instance v13, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda4;

    invoke-direct {v13, v8}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    invoke-virtual {v9, v3, v4, v10, v13}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seekTo(JZLjava/lang/Runnable;)V

    goto :goto_7

    :cond_8
    const-wide/16 v11, 0x0

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v3, v2

    float-to-long v2, v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$onLongPress$1(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLongPress$2()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->retake(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    return-void
.end method

.method private synthetic lambda$onLongPress$3()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->delete(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    return-void
.end method

.method private static synthetic lambda$onLongPress$4()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onLongPress$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private layout(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v1

    move v1, v0

    move v0, v5

    :cond_1
    int-to-float v0, v0

    iget-object v2, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    iget v4, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v3, p2

    mul-float v3, v3, v0

    int-to-float v1, v1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v4

    mul-float v2, v2, v1

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    mul-float v0, v0, p2

    add-int/lit8 v4, v4, 0x1

    int-to-float p2, v4

    mul-float v1, v1, p2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private layoutOut(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->layout(Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v5, p2, v4

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget v6, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    iget v8, p1, Landroid/graphics/RectF;->right:F

    int-to-float v0, v0

    cmpl-float v8, v8, v0

    if-ltz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v1

    cmpl-float v9, v9, v1

    if-ltz v9, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v8, :cond_6

    if-nez v7, :cond_6

    if-nez v2, :cond_6

    sub-float/2addr v1, v6

    invoke-virtual {p1, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    if-nez v5, :cond_7

    if-nez v8, :cond_7

    sub-float/2addr v0, p2

    invoke-virtual {p1, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    if-nez v5, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1, p2, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_8
    if-eqz v2, :cond_9

    if-nez v7, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1, v4, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_9
    :goto_3
    return-void
.end method

.method private onLongPress()V
    .locals 13

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setVolume(F)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelGestures:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setVolume(F)V

    :cond_4
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_lightbulb:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/16 v6, 0x18

    const/high16 v7, 0x41c00000    # 24.0f

    const/16 v8, 0x13

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$string;->StoryCollageMenuHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/16 v8, 0x17

    const/high16 v9, 0x423c0000    # 47.0f

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->containerView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, p0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    new-instance v3, Lorg/telegram/ui/Stories/recorder/SliderView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lorg/telegram/ui/Stories/recorder/SliderView;-><init>(Landroid/content/Context;I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v1, v6}, Lorg/telegram/ui/Stories/recorder/SliderView;->setMinMax(FF)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setValue(F)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/SliderView;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Stories/recorder/SliderView;

    move-result-object v1

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Stories/recorder/SliderView;->fixWidth:I

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_5
    const/16 v1, 0xdc

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ItemOptions;->setFixedWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_camera_retake:I

    sget v6, Lorg/telegram/messenger/R$string;->StoreCollageRetake:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v2, v3, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v2, v3, v6, v4, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->allowCenter(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ItemOptions;->setBlur(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setRoundRadius(II)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelTouch()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public clear(Z)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setContent(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updatePartsState()V

    return-void
.end method

.method public delete(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayout;->delete(I)Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object p1

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updatePartsState()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onResetState:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLayoutUpdate(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v1, v2, v2, v3, v4}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline5;->m(Landroid/graphics/RenderNode;IIII)Z

    invoke-static {v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline6;->m(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    invoke-super {v0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v4, v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->qrDrawer:Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/QRScanner$QrRegionDrawer;->hasNoDraw()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraNeedsBlur(Z)V

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->finishNode(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setCameraNeedsBlur(Z)V

    :cond_2
    const v3, -0xe0e0e1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    const/4 v5, 0x0

    :goto_1
    int-to-double v6, v5

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const/4 v12, 0x0

    cmpg-double v13, v6, v10

    if-gez v13, :cond_3

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    aput v12, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    array-length v7, v6

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v5, v7, :cond_4

    aget-object v6, v6, v5

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_9

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v14, v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v15, v15, v2

    iget-object v10, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v2, v10, v2

    int-to-float v2, v2

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    if-nez v10, :cond_5

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-eqz v10, :cond_6

    :cond_5
    move/from16 v17, v7

    goto :goto_4

    :cond_6
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v2

    iget v12, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v12, v12

    mul-float v15, v15, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v4

    iget v13, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v13, v13

    mul-float v12, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v2

    iget v2, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float v13, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    move/from16 v17, v7

    iget v7, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float v2, v2, v7

    invoke-virtual {v10, v15, v12, v13, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5

    :goto_4
    iget-object v2, v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->fromBounds:Landroid/graphics/RectF;

    iget-object v7, v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->bounds:Landroid/graphics/RectF;

    iget v10, v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->boundsTransition:F

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-static {v2, v7, v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    iget v7, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v10, v2, v7

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v2, v7

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    iget v7, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v10, v2, v7

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v2, v7

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/4 v2, 0x0

    cmpl-float v7, v3, v2

    if-lez v7, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-ne v11, v2, :cond_7

    move/from16 v7, v17

    goto :goto_7

    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v2, :cond_8

    iget-object v2, v11, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v2, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    move/from16 v7, v17

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v11}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_9
    move/from16 v17, v7

    const/4 v2, 0x0

    :goto_8
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->removingParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_c

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->removingParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v10, v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v12, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v11, v11, v12

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v13, v13, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    array-length v14, v13

    if-lt v12, v14, :cond_a

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    aget v12, v13, v12

    int-to-float v12, v12

    :goto_9
    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    iget v14, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v14, v14

    mul-float v13, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v4

    iget v15, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v15, v15

    mul-float v14, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v11

    iget v11, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    int-to-float v11, v11

    mul-float v15, v15, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    move/from16 v17, v7

    iget v7, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float v11, v11, v7

    invoke-virtual {v12, v13, v14, v15, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    iget v11, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v12, v7, v11

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    aput v12, v7, v11

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    iget v10, v10, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v11, v7, v10

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v7, v10

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v7, :cond_b

    iget-object v7, v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_a

    :cond_b
    move/from16 v7, v17

    :goto_a
    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v10, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_c
    move/from16 v17, v7

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_b
    int-to-double v10, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    const/4 v5, 0x0

    cmpg-double v7, v10, v12

    if-gez v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    aget v7, v7, v2

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_d

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    int-to-float v11, v2

    mul-float v10, v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lefts:[F

    aget v11, v11, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v4

    add-int/lit8 v13, v2, 0x1

    int-to-float v13, v13

    mul-float v12, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v7, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    :cond_d
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    aget v7, v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_e

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rights:[F

    aget v10, v10, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    int-to-float v12, v2

    mul-float v11, v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v4

    add-int/lit8 v14, v2, 0x1

    int-to-float v14, v14

    mul-float v13, v13, v14

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v7, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-gez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    :goto_c
    cmpl-float v2, v3, v9

    if-lez v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v2, :cond_12

    iget-object v5, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v6, v6, v7

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v8, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v7, v8, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-eqz v7, :cond_11

    iget-object v5, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->fromBounds:Landroid/graphics/RectF;

    iget-object v6, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->bounds:Landroid/graphics/RectF;

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->boundsTransition:F

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    goto :goto_d

    :cond_11
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v9, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v9, v9

    mul-float v8, v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    iget v10, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/4 v11, 0x1

    add-int/2addr v6, v11

    int-to-float v6, v6

    mul-float v10, v10, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    mul-float v6, v6, v5

    invoke-virtual {v7, v8, v9, v10, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldx:F

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dx:F

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->boundsTransition:F

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    mul-float v5, v5, v3

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldy:F

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dy:F

    iget v8, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->boundsTransition:F

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float v6, v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-direct {v0, v1, v3, v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    const/4 v2, 0x0

    :goto_e
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$100(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    cmpg-float v8, v6, v7

    if-gtz v8, :cond_13

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    goto/16 :goto_16

    :cond_13
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v8, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v7, v7, v8

    iget-object v9, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v8, v9, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v7

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    if-nez v8, :cond_15

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-eqz v8, :cond_14

    goto :goto_f

    :cond_14
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    iget v11, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v11, v11

    mul-float v10, v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/4 v12, 0x1

    add-int/2addr v7, v12

    int-to-float v7, v7

    mul-float v11, v11, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/2addr v5, v12

    int-to-float v5, v5

    mul-float v7, v7, v5

    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_10

    :cond_15
    :goto_f
    iget-object v5, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->fromBounds:Landroid/graphics/RectF;

    iget-object v7, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->bounds:Landroid/graphics/RectF;

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->boundsTransition:F

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-static {v5, v7, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    :goto_10
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v8, v7}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientMatrix:Landroid/graphics/Matrix;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientWidth:I

    mul-int v9, v9, v9

    add-int/2addr v9, v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, -0x404ccccd    # -1.4f

    mul-float v9, v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float v10, v10, v11

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    add-float/2addr v8, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientMatrix:Landroid/graphics/Matrix;

    const/high16 v8, -0x3e380000    # -25.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradient:Landroid/graphics/LinearGradient;

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    iget-object v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget v9, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/high16 v10, 0x41000000    # 8.0f

    if-nez v9, :cond_16

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    if-nez v8, :cond_16

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    :goto_11
    const/4 v9, 0x1

    goto :goto_12

    :cond_16
    const/4 v8, 0x0

    goto :goto_11

    :goto_12
    aput v8, v7, v9

    const/4 v12, 0x0

    aput v8, v7, v12

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    iget-object v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v14, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout;->w:I

    sub-int/2addr v14, v9

    if-ne v13, v14, :cond_17

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    if-nez v8, :cond_17

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    goto :goto_13

    :cond_17
    const/4 v8, 0x0

    :goto_13
    const/4 v9, 0x2

    aput v8, v7, v9

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    iget-object v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget v13, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    iget-object v14, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v15, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout;->w:I

    sub-int/2addr v15, v9

    if-ne v13, v15, :cond_18

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    iget v13, v14, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    sub-int/2addr v13, v9

    if-ne v8, v13, :cond_18

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    goto :goto_14

    :cond_18
    const/4 v8, 0x0

    :goto_14
    const/4 v9, 0x4

    aput v8, v7, v9

    const/4 v9, 0x3

    aput v8, v7, v9

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    if-nez v8, :cond_19

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    if-ne v8, v3, :cond_1a

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    goto :goto_15

    :cond_19
    const/4 v9, 0x1

    :cond_1a
    const/4 v3, 0x0

    :goto_15
    const/4 v8, 0x6

    aput v3, v7, v8

    const/4 v8, 0x5

    aput v3, v7, v8

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->radii:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_1b
    if-eqz v17, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->invalidate()V

    :cond_1c
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->finishNode(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPartAt(FF)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->tx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ty:F

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dx:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldx:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dy:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldy:F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_b

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->tx:F

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ty:F

    invoke-static {v3, v5, v7, v8}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const v7, 0x3f99999a    # 1.2f

    mul-float v5, v5, v7

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledProgress()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->tx:F

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ty:F

    invoke-static {v3, v5, v8, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v3

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    mul-float v5, v5, v7

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dx:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldx:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dy:F

    iput v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    goto/16 :goto_0

    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPartIndexAt(FF)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v0, :cond_5

    if-ltz v3, :cond_5

    if-eq v0, v3, :cond_5

    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->swap(II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v3, v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-float v8, v8, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    iget v0, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v4, v4, v0

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dx:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldx:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dy:F

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ldy:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->tx:F

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ty:F

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->tx:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->ty:F

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->dy:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eq v3, v0, :cond_b

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_b

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reorderingTouch:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onLongPressPart:Ljava/lang/Runnable;

    :cond_9
    return v2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->pressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelTouch()Z

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p2, v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->makingGlobalBlurBitmap:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawScrim(Landroid/graphics/Canvas;F)V
    .locals 6

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v0, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v2, v2, v3

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    iget v4, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget v5, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget v0, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float v5, v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget p2, p2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    mul-float v0, v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->drawPart(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V

    :cond_0
    return-void
.end method

.method public forceNotRestorePosition()V
    .locals 0

    return-void
.end method

.method public getBlurRenderNode()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "CameraViewRenderNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->renderNode:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "CameraViewRenderNodeBlur"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurRenderNode:Ljava/lang/Object;

    invoke-static {v0}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Landroid/graphics/RenderNode;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticApiModelOutline1;->m()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/BotFullscreenButtons$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurRenderNode:Ljava/lang/Object;

    return-object v0
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->longPressedPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->layout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v3, v3, v4

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float v5, v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float v1, v1, v0

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method

.method public getContent()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->hasContent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrent()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    return-object v0
.end method

.method public getDuration()J
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getMainPart()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    sub-float/2addr v4, v0

    mul-float v3, v3, v4

    float-to-long v3, v3

    const-wide/32 v5, 0xe86c

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getFilledCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getFilledProgress()F
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getFilledCount()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getTotalCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    return-object v0
.end method

.method public getMainPart()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iget-object v9, v6, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getDuration()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-lez v11, :cond_4

    iget-object v7, v6, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v7}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getDuration()J

    move-result-wide v7

    :cond_4
    cmp-long v9, v7, v4

    if-lez v9, :cond_1

    move-object v1, v6

    move-wide v4, v7

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getNext()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->nextPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    return-object v0
.end method

.method public getOrder()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPartAt(FF)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget v7, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v0

    iget v8, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v8, v8

    mul-float v7, v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    iget v4, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float v8, v8, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float v4, v4, v3

    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPartIndexAt(FF)I
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedRows:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->animatedColumns:[Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float v7, v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float v3, v3, v2

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPosition()J
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lastPausedPosition:J

    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewStartTime:J

    sub-long v2, v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getDuration()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getDuration()J

    move-result-wide v4

    rem-long v4, v2, v4

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewStartTime:J

    :cond_2
    return-wide v2
.end method

.method public getPositionWithOffset()J
    .locals 6

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPosition()J

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getMainPart()Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v0, v4

    mul-float v3, v3, v0

    float-to-long v3, v3

    add-long/2addr v1, v3

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPosition()J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public getTotalCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasLayout()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVideo()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public highlight(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$000(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$100(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onLayoutUpdate(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v5, v5, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->textureView:Landroid/view/TextureView;

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    if-lez v5, :cond_4

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    if-lez v5, :cond_4

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v5

    iget v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v6

    iget v6, v6, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    rem-int/lit8 v3, v3, 0x5a

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    goto :goto_3

    :cond_3
    move v8, v6

    move v6, v5

    move v5, v8

    :goto_3
    int-to-float v3, v6

    int-to-float v6, p1

    div-float v6, v3, v6

    int-to-float v5, v5

    int-to-float v7, p2

    div-float v7, v5, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v3, v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_4
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_6

    :cond_4
    :goto_5
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$200(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setContent(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updatePartsState()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retake(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setContent(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updatePartsState()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onResetState:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public seekTo(JZ)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide p1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-nez v0, :cond_1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lastPausedPosition:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewStartTime:J

    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->fastSeek:Z

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setContent(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->clear(Z)V

    return-void
.end method

.method public setCameraNeedsBlur(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->needsBlur:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->needsBlur:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updateCameraNeedsBlur()V

    return-void
.end method

.method public setCameraThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCameraThumbVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraThumbVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCameraView(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->unlistenDraw(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updateCameraNeedsBlur()V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_1

    const/16 v0, 0x77

    const/4 v1, -0x1

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->unlistenDraw(Ljava/lang/Runnable;)V

    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_3

    new-instance v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraView;->listenDraw(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updateCameraNeedsBlur()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCancelGestures(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cancelGestures:Ljava/lang/Runnable;

    return-void
.end method

.method public setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const-string v0, "."

    invoke-direct {p1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayout;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->resetReordering:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    new-instance v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->attached:Z

    if-eqz v3, :cond_3

    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_3
    invoke-virtual {v2, v1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setPart(Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v3, v1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setPart(Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;Z)V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->removingParts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setPart(Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;Z)V

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->updatePartsState()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p2, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->resetReordering:Ljava/lang/Runnable;

    const-wide/16 v0, 0x168

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return-void
.end method

.method public setMuted(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isMuted:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isMuted:Z

    return-void
.end method

.method public setOnCameraThumbClick(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onCameraThumbClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->restorePositionOnPlaying:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->restorePositionOnPlaying:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lastPausedPosition:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lastPausedPosition:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->seekTo(JZ)V

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->fastSeek:Z

    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public setPreview(Z)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->preview:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->invalidate()V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->access$002(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->fastSeek:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->lastPausedPosition:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setAudioEnabled(ZZ)V

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->playing:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pause()V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewStartTime:J

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->syncRunnable:Ljava/lang/Runnable;

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public setPreviewView(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->previewView:Lorg/telegram/ui/Stories/recorder/PreviewView;

    return-void
.end method

.method public setResetState(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->onResetState:Ljava/lang/Runnable;

    return-void
.end method

.method public setTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    return-void
.end method

.method public swap(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentLayout:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setLayout(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->reordering:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateCameraNeedsBlur()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->needsBlur:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraViewBlurRenderNode:Ljava/lang/Object;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-ne v3, v1, :cond_2

    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getBlurRenderNode()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->cameraViewBlurRenderNode:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    return-void
.end method

.method public updatePartsState()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->nextPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->hasContent()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-nez v3, :cond_0

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    goto :goto_1

    :cond_0
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->nextPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->currentPart:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2$Part;->setCurrent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
