.class Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCropView"
.end annotation


# instance fields
.field bitmapHeight:I

.field bitmapWidth:I

.field bitmapX:I

.field bitmapY:I

.field circlePaint:Landroid/graphics/Paint;

.field draggingState:I

.field freeform:Z

.field halfPaint:Landroid/graphics/Paint;

.field oldX:F

.field oldY:F

.field rectPaint:Landroid/graphics/Paint;

.field rectSizeX:F

.field rectSizeY:F

.field rectX:F

.field rectY:F

.field final synthetic this$0:Lorg/telegram/ui/PhotoCropActivity;

.field viewHeight:I

.field viewWidth:I


# direct methods
.method public static synthetic $r8$lambda$QFijPByeiVSSRlL1P9yGxm2waf4(Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->lambda$init$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoCropActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x44160000    # 600.0f

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const v1, 0x3ffafafa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x38000000    # -131072.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0xcccccd

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v2, :cond_6

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v1, v1

    sub-float v2, p2, v1

    cmpg-float v9, v2, p1

    if-gez v9, :cond_0

    add-float v9, p2, v1

    cmpl-float v9, v9, p1

    if-lez v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v10, v9, v1

    cmpg-float v10, v10, v0

    if-gez v10, :cond_0

    add-float/2addr v9, v1

    cmpl-float v9, v9, v0

    if-lez v9, :cond_0

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_0

    :cond_0
    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float v10, v2, v9

    cmpg-float v11, v10, p1

    if-gez v11, :cond_1

    add-float v11, p2, v1

    add-float/2addr v11, v9

    cmpl-float v11, v11, p1

    if-lez v11, :cond_1

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v12, v11, v1

    cmpg-float v12, v12, v0

    if-gez v12, :cond_1

    add-float/2addr v11, v1

    cmpl-float v11, v11, v0

    if-lez v11, :cond_1

    iput v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    :cond_1
    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    add-float v2, p2, v1

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v7, v2, v1

    iget v11, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v7, v11

    cmpg-float v7, v7, v0

    if-gez v7, :cond_2

    add-float/2addr v2, v1

    add-float/2addr v2, v11

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    iput v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    :cond_2
    cmpg-float v2, v10, p1

    if-gez v2, :cond_3

    add-float v2, p2, v1

    add-float/2addr v2, v9

    cmpl-float v2, v2, p1

    if-lez v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v6, v2, v1

    iget v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, v0

    if-gez v6, :cond_3

    add-float/2addr v2, v1

    add-float/2addr v2, v7

    cmpl-float v1, v2, v0

    if-lez v1, :cond_3

    iput v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    :cond_3
    cmpg-float v1, p2, p1

    if-gez v1, :cond_4

    add-float/2addr p2, v9

    cmpl-float p2, p2, p1

    if-lez p2, :cond_4

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_4

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr p2, v1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    :goto_0
    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz p2, :cond_5

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_7

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v7, :cond_26

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->draggingState:I

    if-eqz p2, :cond_26

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    sub-float v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    sub-float v2, v0, v2

    if-ne p2, v4, :cond_b

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v3, v2

    cmpg-float v4, p2, v3

    if-gez v4, :cond_8

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    goto :goto_1

    :cond_8
    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr p2, v3

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_9

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    :cond_9
    :goto_1
    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v2, p2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_a

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    goto/16 :goto_6

    :cond_a
    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v1, v2

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr p2, v3

    int-to-float p2, p2

    cmpl-float v1, v1, p2

    if-lez v1, :cond_25

    sub-float/2addr p2, v2

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    goto/16 :goto_6

    :cond_b
    const/high16 v3, 0x43200000    # 160.0f

    if-ne p2, v8, :cond_12

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v4, p2, v1

    cmpg-float v4, v4, v3

    if-gez v4, :cond_c

    sub-float v1, p2, v3

    :cond_c
    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v5, v4, v1

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_d

    sub-float v1, v6, v4

    :cond_d
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_f

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v3, v2, v1

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_e

    sub-float v1, v5, v2

    :cond_e
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    :goto_2
    sub-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float/2addr p2, v1

    :goto_3
    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_6

    :cond_f
    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v6, v5, v2

    cmpg-float v6, v6, v3

    if-gez v6, :cond_10

    sub-float v2, v5, v3

    :cond_10
    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v6, v3, v2

    iget v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_11

    sub-float v2, v7, v3

    :cond_11
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_6

    :cond_12
    if-ne p2, v7, :cond_19

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float v4, p2, v1

    cmpg-float v4, v4, v3

    if-gez v4, :cond_13

    sub-float v1, p2, v3

    neg-float v1, v1

    :cond_13
    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v5, v4, p2

    add-float/2addr v5, v1

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    sub-float/2addr v6, v4

    sub-float v1, v6, p2

    :cond_14
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v4, :cond_16

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    sub-float v3, v2, v1

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    sub-float v1, v2, v4

    :cond_15
    sub-float/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr p2, v1

    goto :goto_3

    :cond_16
    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    sub-float v5, v4, v2

    cmpg-float v5, v5, v3

    if-gez v5, :cond_17

    sub-float v2, v4, v3

    :cond_17
    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v5, v3, v2

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_18

    sub-float v2, v6, v3

    :cond_18
    add-float/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float/2addr v4, v2

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto/16 :goto_6

    :cond_19
    if-ne p2, v6, :cond_1f

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    sub-float v4, p2, v1

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1a

    sub-float v1, p2, v3

    :cond_1a
    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v5, v4, v1

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    sub-float v1, v6, v4

    :cond_1b
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez v5, :cond_1d

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v2, p2

    sub-float v3, v2, v1

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int v7, v5, v6

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1c

    int-to-float v1, v5

    sub-float/2addr v2, v1

    int-to-float v1, v6

    sub-float v1, v2, v1

    :cond_1c
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    goto/16 :goto_2

    :cond_1d
    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float v7, v5, v6

    add-float/2addr v7, v2

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v10, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1e

    sub-float/2addr v9, v5

    sub-float v2, v9, v6

    :cond_1e
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    sub-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v6, v2

    iput v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float p2, v6, v3

    if-gez p2, :cond_25

    goto :goto_5

    :cond_1f
    if-ne p2, v5, :cond_25

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float v5, p2, v4

    add-float/2addr v5, v1

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    sub-float/2addr v6, p2

    sub-float v1, v6, v4

    :cond_20
    iget-boolean p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-nez p2, :cond_22

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v2, p2, v4

    add-float/2addr v2, v1

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_21

    sub-float/2addr v5, p2

    sub-float v1, v5, v4

    :cond_21
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr p2, v1

    iput p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_4

    :cond_22
    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float v6, p2, v5

    add-float/2addr v6, v2

    iget v7, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v9, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_23

    sub-float/2addr v7, p2

    sub-float v2, v7, v5

    :cond_23
    add-float/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v2

    iput v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    :goto_4
    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_24

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    :cond_24
    iget p2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_25

    :goto_5
    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    :cond_25
    :goto_6
    iput p1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldX:F

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->oldY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_26
    :goto_7
    return v8
.end method

.method private updateBitmapSize()V
    .locals 11

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    div-float/2addr v4, v1

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    int-to-float v7, v6

    div-float/2addr v7, v3

    iget v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    int-to-float v9, v8

    div-float/2addr v9, v5

    cmpl-float v10, v7, v9

    if-lez v10, :cond_1

    iput v8, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    mul-float v3, v3, v9

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    goto :goto_0

    :cond_1
    iput v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    mul-float v5, v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    :goto_0
    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->freeform:Z

    if-eqz v0, :cond_2

    int-to-float v0, v3

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v0, v0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    goto :goto_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    if-le v0, v1, :cond_3

    int-to-float v0, v3

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    :goto_2
    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    goto :goto_2

    :cond_4
    iget v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v5, v5

    mul-float v0, v0, v5

    iget v6, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    iput v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v0, v0

    mul-float v2, v2, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    mul-float v4, v4, v5

    iput v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    mul-float v1, v1, v0

    iput v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    div-float/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    div-float/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int v4, v0, v2

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    :cond_2
    add-int v4, v1, v3

    iget-object v5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v5}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v3}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v4}, Lorg/telegram/ui/PhotoCropActivity;->access$000(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v4, v2

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->this$0:Lorg/telegram/ui/PhotoCropActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoCropActivity;->access$100(Lorg/telegram/ui/PhotoCropActivity;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v8, p1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object/from16 v8, p1

    :goto_1
    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v3, v0

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    int-to-float v4, v2

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v6, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v3, v0

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float v6, v4, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float v3, v0, v2

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float v6, v4, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapX:I

    int-to-float v3, v0

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v2

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapY:I

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->bitmapHeight:I

    add-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float v5, v3, v0

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float v6, v4, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    int-to-float v9, v0

    add-float v3, v2, v9

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v4, v2, v9

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v3, v2

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    const/4 v11, 0x3

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    add-float v6, v2, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v3, v2, v9

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v4, v9

    add-float v5, v2, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v4, v2

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v4, v2, v9

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v6, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v9

    add-float v6, v2, v0

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v2, v3

    sub-float v3, v2, v0

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float/2addr v4, v9

    sub-float v5, v2, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v6, v4, v2

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v3, v2, v9

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v4

    sub-float/2addr v2, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v5, v2, v0

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v6, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v6

    sub-float v6, v2, v9

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v3, v2, v9

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v4

    sub-float v4, v2, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v5, v3, v2

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v6, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v6

    sub-float v6, v2, v9

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v4

    sub-float v4, v2, v0

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v6, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v9

    sub-float v6, v2, v9

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v2, v3

    sub-float v3, v2, v0

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v0, v2

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v2

    sub-float v5, v0, v9

    iget v0, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    sub-float v6, v0, v9

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    :goto_2
    if-ge v0, v11, :cond_1

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    iget v3, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v3, v10

    int-to-float v12, v0

    mul-float v3, v3, v12

    add-float v4, v2, v3

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    add-float v6, v5, v9

    add-float/2addr v2, v9

    add-float v7, v2, v3

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    add-float/2addr v5, v2

    sub-float v13, v5, v9

    iget-object v14, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v4

    move v4, v6

    move v5, v7

    move v6, v13

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectX:F

    add-float v3, v2, v9

    iget v4, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectY:F

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeY:F

    div-float/2addr v5, v10

    mul-float v5, v5, v12

    add-float/2addr v4, v5

    sub-float/2addr v2, v9

    iget v5, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->rectSizeX:F

    add-float/2addr v5, v2

    add-float v6, v4, v9

    iget-object v7, v1, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    const/high16 p1, 0x41e00000    # 28.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewWidth:I

    sub-int/2addr p5, p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    iput p5, p0, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->viewHeight:I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoCropActivity$PhotoCropView;->updateBitmapSize()V

    return-void
.end method
