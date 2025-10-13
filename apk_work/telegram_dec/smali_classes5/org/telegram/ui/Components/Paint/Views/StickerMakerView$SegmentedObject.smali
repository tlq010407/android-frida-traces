.class public Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentedObject"
.end annotation


# instance fields
.field private final USE_POINTS:Z

.field private borderImageHeight:F

.field private borderImageWidth:F

.field private final bordersDiffStrokePaint:Landroid/graphics/Paint;

.field private final bordersFillPaint:Landroid/graphics/Paint;

.field private final bordersStrokePaint:Landroid/graphics/Paint;

.field public bounds:Landroid/graphics/RectF;

.field public darkMaskImage:Landroid/graphics/Bitmap;

.field public hover:Z

.field public image:Landroid/graphics/Bitmap;

.field public orientation:I

.field public overrideDarkMaskImage:Landroid/graphics/Bitmap;

.field public overrideImage:Landroid/graphics/Bitmap;

.field private final partSegmentBorderPath:Landroid/graphics/Path;

.field private points:[F

.field private pointsCount:I

.field private final pointsHighlightPaint:Landroid/graphics/Paint;

.field private final pointsPaint:Landroid/graphics/Paint;

.field public rotatedBounds:Landroid/graphics/RectF;

.field private final segmentBorderPath:Landroid/graphics/Path;

.field public select:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(FLandroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->select:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersDiffStrokePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->USE_POINTS:Z

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageWidth:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageWidth:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageHeight:F

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageHeight:F

    return p1
.end method


# virtual methods
.method public drawAnimationBorders(Landroid/graphics/Canvas;FFLandroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->select:Lorg/telegram/ui/Components/AnimatedFloat;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const v4, 0x3f8851ec    # 1.065f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->select:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->hover:Z

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v6

    const v7, 0x3f866666    # 1.05f

    invoke-static {v5, v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float v4, v4, v6

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    div-int/lit8 v6, v6, 0x5a

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    int-to-float v6, v6

    div-float/2addr v9, v6

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageWidth:F

    mul-float v9, v9, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->rotatedBounds:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    int-to-float v8, v8

    div-float/2addr v10, v8

    iget v12, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageHeight:F

    mul-float v10, v10, v12

    div-float/2addr v12, v11

    sub-float/2addr v10, v12

    invoke-virtual {v1, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    const/16 v9, 0x1f4

    const v10, 0x3f19999a    # 0.6f

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    int-to-float v4, v4

    mul-float v12, p2, v4

    float-to-int v12, v12

    mul-float v4, v4, v10

    float-to-int v4, v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v12

    iget v13, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    if-lez v13, :cond_3

    :goto_1
    if-gt v12, v4, :cond_3

    sub-int v13, v4, v12

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float v13, v5, v13

    cmpl-float v14, v13, v3

    if-lez v14, :cond_2

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    const v15, 0x41233333    # 10.2f

    mul-float v13, v13, v15

    mul-float v13, v13, v2

    float-to-int v13, v13

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    iget v14, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    rem-int v14, v12, v14

    mul-int/lit8 v14, v14, 0x2

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v14, v7, v15}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->orientation:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    div-float v4, v5, v6

    iget v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageWidth:F

    mul-float v4, v4, v6

    div-float v6, v5, v8

    iget v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->borderImageHeight:F

    mul-float v6, v6, v8

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v4, v6, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v4, :cond_5

    iget v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    int-to-float v3, v3

    mul-float v4, p2, v3

    float-to-int v4, v4

    mul-float v3, v3, v10

    float-to-int v3, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v4

    iget v8, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    if-lez v8, :cond_7

    move v8, v4

    :goto_2
    if-gt v8, v3, :cond_7

    sub-int v9, v8, v4

    int-to-float v9, v9

    sub-int v10, v3, v4

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v10, v5, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    mul-float v9, v9, v10

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    mul-float v9, v9, v6

    mul-float v9, v9, v2

    float-to-int v9, v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    rem-int v10, v8, v10

    mul-int/lit8 v10, v10, 0x2

    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v7, v11}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$200(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$200(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    cmpl-float v7, v4, v3

    if-nez v7, :cond_6

    return-void

    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$300(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v7

    mul-float v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$400(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v6

    const/high16 v7, 0x42800000    # 64.0f

    mul-float v2, v2, v7

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$400(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const v2, 0x3e4ccccd    # 0.2f

    add-float v2, p2, v2

    mul-float v6, v4, p2

    mul-float v7, v4, v2

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$200(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    const/4 v11, 0x1

    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$300(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$300(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    cmpl-float v6, v2, v5

    if-lez v6, :cond_7

    sub-float/2addr v2, v5

    mul-float v2, v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$200(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$200(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/PathMeasure;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2, v5, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$300(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->partSegmentBorderPath:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$300(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    :goto_3
    return-void
.end method

.method public drawOutline(Landroid/graphics/Canvas;ZFF)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$000(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Path;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$000(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$100(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    :goto_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p4, p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {p4}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$000(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Path;

    move-result-object p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->this$0:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->access$000(Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;)Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getDarkMaskImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initPoints()V
    .locals 9

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    new-array v3, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsCount:I

    if-ge v5, v6, :cond_0

    int-to-float v7, v5

    int-to-float v6, v6

    div-float/2addr v7, v6

    mul-float v7, v7, v1

    rem-float/2addr v7, v1

    const/4 v6, 0x0

    invoke-virtual {v0, v7, v3, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->points:[F

    mul-int/lit8 v7, v5, 0x2

    aget v8, v3, v4

    aput v8, v6, v7

    add-int/2addr v7, v2

    aget v8, v3, v2

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersFillPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/CornerPathEffect;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->bordersStrokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v2, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->pointsHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method

.method public makeDarkMaskImage()Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->segmentBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideImage:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->image:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->overrideDarkMaskImage:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView$SegmentedObject;->darkMaskImage:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method
