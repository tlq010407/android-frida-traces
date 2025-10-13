.class Lorg/telegram/ui/CameraScanActivity$3;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CameraScanActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/CameraScanActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CameraScanActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    return-void
.end method

.method private aroundPoint(III)Landroid/graphics/RectF;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-int v1, p1, p3

    int-to-float v1, v1

    sub-int v2, p2, p3

    int-to-float v2, v2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1300(Lorg/telegram/ui/CameraScanActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    move-object/from16 v9, p2

    if-ne v9, v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1400(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    mul-float v5, v5, v1

    float-to-int v1, v5

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v5}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v5, v6

    mul-float v2, v2, v5

    float-to-int v10, v2

    int-to-float v2, v3

    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v3}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v3

    mul-float v3, v3, v6

    add-float/2addr v3, v6

    mul-float v2, v2, v3

    float-to-int v11, v2

    div-int/lit8 v2, v10, 0x2

    sub-int v12, v4, v2

    div-int/lit8 v2, v11, 0x2

    sub-int v13, v1, v2

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$1600(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v2

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v2, v14, v2

    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v3}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float v2, v2, v3

    sub-float v2, v14, v2

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v2, v2, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v6, v13

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v5, v6

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v6, v13, v11

    int-to-float v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v1, p1

    move/from16 v18, v3

    move v3, v5

    move/from16 v19, v5

    move/from16 v5, v18

    move/from16 v20, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    int-to-float v6, v12

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v1, p1

    move/from16 v3, v17

    move v4, v6

    move/from16 v5, v19

    move/from16 v18, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v6, v12, v10

    int-to-float v5, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v16, v5

    move/from16 v5, v19

    move/from16 v21, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v2

    sub-float v2, v14, v2

    const/4 v9, 0x0

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v2, v2, v15

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$1700(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v5}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v5

    float-to-double v5, v5

    const-wide v10, 0x3ffcccccc0000000L    # 1.7999999523162842

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v4}, Lorg/telegram/ui/CameraScanActivity;->access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v5}, Lorg/telegram/ui/CameraScanActivity;->access$1500(Lorg/telegram/ui/CameraScanActivity;)F

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v5, v5, v15

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    add-int v5, v13, v3

    invoke-direct {v0, v12, v5, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v6

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v4, v6, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    int-to-float v6, v1

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float v6, v6, v11

    add-float v11, v18, v6

    float-to-int v11, v11

    add-float v14, v17, v6

    float-to-int v14, v14

    mul-int/lit8 v15, v1, 0x2

    invoke-direct {v0, v11, v14, v15}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v9

    move/from16 p3, v8

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {v4, v9, v10, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    add-int v9, v12, v3

    invoke-direct {v0, v9, v13, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v8

    move/from16 v17, v9

    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v4, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    add-int v8, v12, v2

    int-to-float v8, v8

    add-int v10, v13, v2

    int-to-float v10, v10

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v11, v14, v1}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v8

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v8, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    iget-object v8, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v8}, Lorg/telegram/ui/CameraScanActivity;->access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    move/from16 v8, v21

    invoke-direct {v0, v8, v5, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v5

    const/high16 v9, -0x3ccc0000    # -180.0f

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v4, v5, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    sub-float v5, v16, v6

    float-to-int v5, v5

    invoke-direct {v0, v5, v14, v15}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v10

    move/from16 v22, v11

    const/4 v9, 0x0

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v10, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    sub-int v9, v8, v3

    invoke-direct {v0, v9, v13, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v10

    const/high16 v11, 0x43870000    # 270.0f

    const/high16 v13, -0x3ccc0000    # -180.0f

    invoke-virtual {v4, v10, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v5, v14, v1}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v10

    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v4, v10, v11, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v10}, Lorg/telegram/ui/CameraScanActivity;->access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    move/from16 v13, v20

    sub-int v3, v13, v3

    invoke-direct {v0, v12, v3, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, -0x3ccc0000    # -180.0f

    invoke-virtual {v4, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    sub-float v6, v19, v6

    float-to-int v6, v6

    move/from16 v10, v22

    invoke-direct {v0, v10, v6, v15}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v11

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v14, 0x43340000    # 180.0f

    invoke-virtual {v4, v11, v14, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    move/from16 v12, v17

    invoke-direct {v0, v12, v13, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v11

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v14, -0x3ccc0000    # -180.0f

    invoke-virtual {v4, v11, v12, v14}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v10, v6, v1}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v4, v10, v12, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    iget-object v10, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v10}, Lorg/telegram/ui/CameraScanActivity;->access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v8, v3, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v4, v3, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v5, v6, v15}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v4

    const/4 v10, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v3, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v9, v13, v2}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v3, v2, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-direct {v0, v5, v6, v1}, Lorg/telegram/ui/CameraScanActivity$3;->aroundPoint(III)Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v1, v11, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lorg/telegram/ui/CameraScanActivity$3;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$1800(Lorg/telegram/ui/CameraScanActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move/from16 p3, v8

    :goto_0
    return p3
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result p1

    const/4 p2, 0x3

    const/high16 p3, 0x42100000    # 36.0f

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$500(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    div-int/lit8 v1, p5, 0x16

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$500(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    div-int/lit8 v1, p5, 0xf

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    int-to-float p1, p5

    const v0, 0x3f266666    # 0.65f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v0}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, p3, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$1100(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$900(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$1000(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_2
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sub-int v1, p5, p1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    sub-int v1, p5, p1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v5}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v5}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result v2

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v4}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr p3, v4

    iget-object v4, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v4}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, p3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p3}, Lorg/telegram/ui/CameraScanActivity;->access$500(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$500(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p3}, Lorg/telegram/ui/CameraScanActivity;->access$000(Lorg/telegram/ui/CameraScanActivity;)Z

    move-result p3

    const/high16 v0, 0x420c0000    # 35.0f

    if-eqz p3, :cond_5

    div-int/lit8 p3, p4, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p3, v1

    goto :goto_2

    :cond_5
    div-int/lit8 p3, p4, 0x2

    iget-object v1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v1}, Lorg/telegram/ui/CameraScanActivity;->access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    :goto_2
    sub-int v1, p5, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    const/high16 p1, 0x42a00000    # 80.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v3}, Lorg/telegram/ui/CameraScanActivity;->access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_6

    div-int/lit8 p1, p4, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p3}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p1, p3

    iget-object p3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p3}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v0}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3, p1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result p1

    if-eq p1, p2, :cond_7

    int-to-float p1, p5

    const p2, 0x3f3d70a4    # 0.74f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-float p2, p4

    const p3, 0x3d4ccccd    # 0.05f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p3}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p4}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p5}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$1200(Lorg/telegram/ui/CameraScanActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {v2}, Lorg/telegram/ui/CameraScanActivity;->access$200(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result p1

    const/4 p2, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    int-to-float v4, v0

    const v5, 0x3f343958    # 0.704f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$400(Lorg/telegram/ui/CameraScanActivity;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$500(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v3, 0x42700000    # 60.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$600(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$700(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$800(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$300(Lorg/telegram/ui/CameraScanActivity;)I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    :goto_1
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/CameraScanActivity$3;->this$0:Lorg/telegram/ui/CameraScanActivity;

    invoke-static {p1}, Lorg/telegram/ui/CameraScanActivity;->access$100(Lorg/telegram/ui/CameraScanActivity;)Landroid/widget/TextView;

    move-result-object p1

    int-to-float v3, v0

    const v4, 0x3f666666    # 0.9f

    mul-float v3, v3, v4

    float-to-int v3, v3

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
