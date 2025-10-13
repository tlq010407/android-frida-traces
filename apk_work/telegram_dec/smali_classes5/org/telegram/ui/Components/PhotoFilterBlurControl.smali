.class public Lorg/telegram/ui/Components/PhotoFilterBlurControl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;,
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;
    }
.end annotation


# static fields
.field private static final BlurInsetProximity:F

.field private static final BlurViewCenterInset:F

.field private static final BlurViewRadiusInset:F


# instance fields
.field private final GestureStateBegan:I

.field private final GestureStateCancelled:I

.field private final GestureStateChanged:I

.field private final GestureStateEnded:I

.field private final GestureStateFailed:I

.field private activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field private actualAreaSize:Lorg/telegram/ui/Components/Size;

.field private angle:F

.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field private centerPoint:Lorg/telegram/ui/Components/Point;

.field private checkForMoving:Z

.field private checkForZooming:Z

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

.field private falloff:F

.field private inBubbleMode:Z

.field private isMoving:Z

.field private isZooming:Z

.field private paint:Landroid/graphics/Paint;

.field private pointerScale:F

.field private pointerStartX:F

.field private pointerStartY:F

.field private size:F

.field private startCenterPoint:Lorg/telegram/ui/Components/Point;

.field private startDistance:F

.field private startPointerDistance:F

.field private startRadius:F

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateBegan:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateChanged:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateEnded:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateCancelled:I

    const/4 v1, 0x5

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateFailed:I

    new-instance v1, Lorg/telegram/ui/Components/Point;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    new-instance v1, Lorg/telegram/ui/Components/Size;

    invoke-direct {v1}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    new-instance v1, Lorg/telegram/ui/Components/Point;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    const v1, 0x3e19999a    # 0.15f

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    instance-of p1, p1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    return-void
.end method

.method private degreesToRadians(F)F
    .locals 1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float p1, p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getActualCenterPoint()Lorg/telegram/ui/Components/Point;
    .locals 7

    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v4, v4, Lorg/telegram/ui/Components/Point;->x:F

    mul-float v4, v4, v2

    add-float/2addr v1, v4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float v5, v4, v6

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private getActualInnerRadius()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getActualOuterRadius()F
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, v3

    mul-float v1, v1, v1

    sub-float/2addr v0, p1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    iget v5, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v5, v2, v5

    iget v6, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float v6, v3, v6

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v9, v8, Lorg/telegram/ui/Components/Size;->width:F

    iget v8, v8, Lorg/telegram/ui/Components/Size;->height:F

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float v9, v9, v8

    iget v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float v10, v10, v8

    float-to-double v11, v5

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v5

    float-to-double v13, v5

    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    float-to-double v5, v6

    iget v13, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v13

    add-double/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v1, v12, :cond_18

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v13, 0x2

    if-eq v1, v13, :cond_1

    if-eq v1, v10, :cond_0

    if-eq v1, v9, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_e

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-direct {v0, v6, v12}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto/16 :goto_e

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/16 v14, 0x15

    const v15, 0x3dcccccd    # 0.1f

    const v16, 0x3ca3d70a    # 0.02f

    const/high16 v17, 0x40000000    # 2.0f

    if-nez v1, :cond_12

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v12, :cond_10

    if-eq v1, v13, :cond_f

    if-eq v1, v10, :cond_e

    if-eq v1, v9, :cond_2

    goto/16 :goto_7

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float v1, v2, v1

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v5, v3, v5

    iget v7, v4, Lorg/telegram/ui/Components/Point;->x:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v7, :cond_7

    if-nez v4, :cond_7

    if-eqz v8, :cond_6

    cmpg-float v4, v5, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_6
    cmpl-float v4, v1, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_9

    if-nez v4, :cond_9

    if-eqz v8, :cond_8

    cmpl-float v4, v5, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_8
    cmpl-float v4, v1, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_9
    if-eqz v7, :cond_b

    if-eqz v4, :cond_b

    if-eqz v8, :cond_a

    cmpl-float v4, v5, v11

    if-lez v4, :cond_d

    goto :goto_3

    :cond_a
    cmpg-float v4, v1, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_b
    if-eqz v8, :cond_c

    cmpg-float v4, v5, v11

    if-gez v4, :cond_d

    goto :goto_3

    :cond_c
    cmpg-float v4, v1, v11

    if-gez v4, :cond_d

    :goto_3
    const/4 v6, 0x1

    :cond_d
    mul-float v1, v1, v1

    mul-float v5, v5, v5

    add-float/2addr v1, v5

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v12

    int-to-float v5, v6

    mul-float v1, v1, v5

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v5

    const v5, 0x3f933333    # 1.15f

    div-float/2addr v1, v5

    add-float/2addr v4, v1

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    iput v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    goto/16 :goto_7

    :cond_e
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    add-float v1, v1, v16

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v2, v5

    :goto_4
    div-float/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_7

    :cond_f
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v1, v5

    :goto_5
    div-float/2addr v1, v8

    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    sub-float v2, v2, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_7

    :cond_10
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float/2addr v2, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float/2addr v3, v1

    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v4, v5

    div-float v4, v4, v17

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_11

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v5, :cond_11

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_11
    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v8

    div-float v6, v6, v17

    add-float/2addr v5, v6

    iget v6, v7, Lorg/telegram/ui/Components/Size;->width:F

    invoke-direct {v1, v4, v5, v6, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    new-instance v4, Lorg/telegram/ui/Components/Point;

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v4, v1

    iget v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float v1, v6, v1

    div-float v1, v1, v17

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    :goto_6
    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_7

    :cond_12
    if-ne v1, v12, :cond_17

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v12, :cond_15

    if-eq v1, v13, :cond_14

    if-eq v1, v10, :cond_13

    goto/16 :goto_7

    :cond_13
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v7, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    add-float v1, v1, v16

    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v2, v7

    goto/16 :goto_4

    :cond_14
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    sub-float/2addr v7, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    add-float/2addr v1, v7

    goto/16 :goto_5

    :cond_15
    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    sub-float/2addr v2, v1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float/2addr v3, v1

    new-instance v1, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v5, v5, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v4, v5

    div-float v4, v4, v17

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v14, :cond_16

    iget-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->inBubbleMode:Z

    if-nez v5, :cond_16

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_16
    int-to-float v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v8, v7, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v6, v8

    div-float v6, v6, v17

    add-float/2addr v5, v6

    iget v6, v7, Lorg/telegram/ui/Components/Size;->width:F

    invoke-direct {v1, v4, v5, v6, v8}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    new-instance v4, Lorg/telegram/ui/Components/Point;

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->width:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->y:F

    iget v6, v1, Lorg/telegram/ui/Components/Rect;->height:F

    add-float/2addr v6, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    new-instance v2, Lorg/telegram/ui/Components/Point;

    iget v3, v4, Lorg/telegram/ui/Components/Point;->x:F

    iget v5, v1, Lorg/telegram/ui/Components/Rect;->x:F

    sub-float/2addr v3, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v6, v5, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v3, v6

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    iget v1, v1, Lorg/telegram/ui/Components/Rect;->y:F

    sub-float/2addr v4, v1

    iget v1, v5, Lorg/telegram/ui/Components/Size;->height:F

    sub-float v1, v6, v1

    div-float v1, v1, v17

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    goto/16 :goto_6

    :cond_17
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz v1, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v5

    const v6, 0x3fc90fdb

    add-float/2addr v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    goto/16 :goto_e

    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    sub-float v1, v10, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    const/4 v6, 0x1

    :cond_19
    if-eqz v6, :cond_1a

    const/4 v1, 0x0

    goto :goto_8

    :cond_1a
    sget v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_8
    if-eqz v6, :cond_1b

    goto :goto_9

    :cond_1b
    sget v11, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_9
    iget v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v2, :cond_20

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_1c

    goto :goto_c

    :cond_1c
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v3, v9, v2

    cmpl-float v4, v5, v3

    if-lez v4, :cond_1d

    add-float/2addr v1, v9

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1d

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    :goto_a
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_d

    :cond_1d
    sub-float v1, v10, v11

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1e

    add-float v1, v10, v2

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1e

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    :goto_b
    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_d

    :cond_1e
    cmpg-float v1, v5, v3

    if-lez v1, :cond_1f

    add-float/2addr v10, v2

    cmpl-float v1, v5, v10

    if-ltz v1, :cond_23

    :cond_1f
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    goto :goto_d

    :cond_20
    if-ne v2, v12, :cond_23

    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_21

    :goto_c
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    goto :goto_d

    :cond_21
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v3, v9, v2

    cmpl-float v3, v7, v3

    if-lez v3, :cond_22

    add-float/2addr v1, v9

    cmpg-float v1, v7, v1

    if-gez v1, :cond_22

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    goto :goto_a

    :cond_22
    sub-float v1, v10, v11

    cmpl-float v1, v7, v1

    if-lez v1, :cond_23

    add-float/2addr v2, v10

    cmpg-float v1, v7, v2

    if-gez v1, :cond_23

    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    goto :goto_b

    :cond_23
    :goto_d
    invoke-direct {v0, v12, v12}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    :cond_24
    :goto_e
    return-void
.end method

.method private handlePinch(ILandroid/view/MotionEvent;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    sget-object p1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    sub-float v1, p1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v2

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float v1, v1, p2

    const p2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v1, 0x3ca3d70a    # 0.02f

    add-float/2addr p2, v1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float v1, v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v2

    const v3, 0x3fc90fdb

    add-float/2addr v2, v3

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSelected(ZZ)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v9

    iget v2, v1, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v1, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/16 v10, 0x40

    if-nez v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v13, v1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v14, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v15, v1

    const/4 v6, 0x0

    :goto_0
    const/16 v1, 0x1e

    if-ge v6, v1, :cond_0

    int-to-float v1, v6

    add-float v16, v14, v13

    mul-float v17, v1, v16

    neg-float v5, v8

    add-float v18, v17, v14

    sub-float v19, v15, v8

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v5

    move-object/from16 v20, v4

    move/from16 v4, v18

    move/from16 v21, v5

    move/from16 v5, v19

    move v11, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v1, v11

    int-to-float v1, v1

    mul-float v1, v1, v16

    sub-float v16, v1, v13

    sub-float v20, v16, v14

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v19, v15, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move/from16 v2, v17

    move v3, v8

    move/from16 v4, v18

    move/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move/from16 v2, v20

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v8, v1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    int-to-float v1, v11

    add-float v12, v8, v13

    mul-float v14, v1, v12

    neg-float v6, v9

    add-float v16, v8, v14

    sub-float v17, v15, v9

    iget-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v14

    move v3, v6

    move/from16 v4, v16

    move-object/from16 v18, v5

    move/from16 v5, v17

    move/from16 v19, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    neg-int v1, v11

    int-to-float v1, v1

    mul-float v1, v1, v12

    sub-float v12, v1, v13

    sub-float v18, v12, v8

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float v17, v15, v9

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move v2, v14

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move/from16 v2, v18

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v2, v8

    invoke-virtual {v1, v2, v2, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v8, 0x0

    :goto_2
    const/16 v1, 0x16

    if-ge v8, v1, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v1, v8

    const v3, 0x4182cccd    # 16.35f

    mul-float v3, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const v4, 0x41233333    # 10.2f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v2, v9

    invoke-virtual {v1, v2, v2, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v1, v11

    const v3, 0x40b3d70a    # 5.62f

    mul-float v3, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const v4, 0x40666666    # 3.6f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto/16 :goto_5

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_1

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v2, :cond_14

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_2
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_3

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_0

    :cond_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v2, :cond_4

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    :cond_4
    :goto_0
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    goto/16 :goto_5

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v6, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-nez v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/Point;

    iget v8, v4, Lorg/telegram/ui/Components/Point;->x:F

    sub-float/2addr v2, v8

    iget v4, v4, Lorg/telegram/ui/Components/Point;->y:F

    sub-float/2addr v3, v4

    invoke-direct {v7, v2, v3}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iget v2, v7, Lorg/telegram/ui/Components/Point;->x:F

    mul-float v2, v2, v2

    iget v3, v7, Lorg/telegram/ui/Components/Point;->y:F

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v4

    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sget v9, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-eqz v8, :cond_7

    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    sget v10, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_2
    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    sget v9, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    :goto_3
    iget v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v8, :cond_c

    iget v8, v7, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v11, v8

    iget v8, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v8

    float-to-double v13, v8

    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    iget v7, v7, Lorg/telegram/ui/Components/Point;->y:F

    float-to-double v7, v7

    iget v13, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {v0, v13}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    double-to-float v7, v7

    sget v8, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_9

    goto :goto_4

    :cond_9
    sget v2, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v8, v3, v2

    cmpl-float v11, v7, v8

    if-lez v11, :cond_a

    add-float/2addr v3, v10

    cmpg-float v3, v7, v3

    if-gez v3, :cond_a

    goto :goto_4

    :cond_a
    sub-float v3, v4, v9

    cmpl-float v3, v7, v3

    if-lez v3, :cond_b

    add-float v3, v4, v2

    cmpg-float v3, v7, v3

    if-gez v3, :cond_b

    goto :goto_4

    :cond_b
    cmpg-float v3, v7, v8

    if-lez v3, :cond_f

    add-float/2addr v4, v2

    cmpl-float v2, v7, v4

    if-ltz v2, :cond_10

    goto :goto_4

    :cond_c
    if-ne v8, v6, :cond_10

    sget v7, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v7, v2, v7

    if-gez v7, :cond_d

    goto :goto_4

    :cond_d
    sget v7, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v8, v3, v7

    cmpl-float v8, v2, v8

    if-lez v8, :cond_e

    add-float/2addr v3, v10

    cmpg-float v3, v2, v3

    if-gez v3, :cond_e

    goto :goto_4

    :cond_e
    sub-float v3, v4, v9

    cmpl-float v3, v2, v3

    if-lez v3, :cond_10

    add-float/2addr v4, v7

    cmpg-float v2, v2, v4

    if-gez v2, :cond_10

    :cond_f
    :goto_4
    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    :cond_10
    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_14

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto :goto_5

    :cond_11
    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v2, :cond_12

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_13

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-nez v2, :cond_14

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto :goto_5

    :cond_13
    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    iput-boolean v6, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    :cond_14
    :goto_5
    return v6
.end method

.method public setActualAreaSize(FF)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p1, v0, Lorg/telegram/ui/Components/Size;->width:F

    iput p2, v0, Lorg/telegram/ui/Components/Size;->height:F

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
