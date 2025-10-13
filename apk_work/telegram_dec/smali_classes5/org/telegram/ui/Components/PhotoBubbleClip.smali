.class public Lorg/telegram/ui/Components/PhotoBubbleClip;
.super Landroid/graphics/Path;
.source "SourceFile"


# instance fields
.field private lastCx:I

.field private lastCy:I

.field private lastR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public setBounds(III)V
    .locals 18

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    iget v0, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastCx:I

    if-ne v0, v8, :cond_0

    iget v0, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastCy:I

    if-ne v0, v9, :cond_0

    iget v0, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastR:I

    if-ne v0, v10, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->rewind()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-int v1, v8, v10

    int-to-float v11, v1

    sub-int v1, v9, v10

    int-to-float v1, v1

    add-int v2, v8, v10

    int-to-float v2, v2

    add-int v3, v9, v10

    int-to-float v12, v3

    invoke-virtual {v0, v11, v1, v2, v12}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    const/4 v2, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v7, v0, v3, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    int-to-float v0, v10

    const/high16 v13, 0x42a20000    # 81.0f

    div-float v14, v0, v13

    int-to-float v15, v8

    const/high16 v0, 0x41500000    # 13.0f

    mul-float v0, v0, v14

    sub-float v1, v15, v0

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v0, v0, v14

    sub-float v3, v15, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, v14

    sub-float v16, v12, v0

    const/high16 v0, 0x42100000    # 36.0f

    mul-float v0, v0, v14

    sub-float v5, v15, v0

    const v0, 0x4106b852    # 8.42f

    mul-float v0, v0, v14

    sub-float v6, v12, v0

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x42500000    # 52.0f

    mul-float v0, v0, v14

    sub-float v1, v15, v0

    sub-float v17, v12, v14

    const/high16 v0, 0x42620000    # 56.5f

    mul-float v0, v0, v14

    sub-float v3, v15, v0

    const v0, 0x429c0a3d    # 78.02f

    mul-float v0, v0, v14

    sub-float v5, v15, v0

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v4, v17

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float v0, v0, v14

    sub-float v1, v15, v0

    mul-float v13, v13, v14

    sub-float v3, v15, v13

    const v0, 0x429f0a3d    # 79.52f

    mul-float v0, v0, v14

    sub-float v5, v15, v0

    const/high16 v0, 0x40900000    # 4.5f

    mul-float v0, v0, v14

    sub-float v6, v12, v0

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x429c0000    # 78.0f

    mul-float v0, v0, v14

    sub-float v1, v15, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v0, v0, v14

    sub-float v2, v12, v0

    const v0, 0x427eeb85    # 63.73f

    mul-float v0, v0, v14

    sub-float v5, v15, v0

    const/high16 v0, 0x41700000    # 15.0f

    mul-float v0, v0, v14

    sub-float v4, v12, v0

    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v0, v0, v14

    sub-float v6, v12, v0

    move-object/from16 v0, p0

    move v3, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x42950000    # 74.5f

    mul-float v0, v0, v14

    sub-float v1, v15, v0

    const/high16 v0, 0x42330000    # 44.75f

    mul-float v0, v0, v14

    sub-float v2, v12, v0

    int-to-float v6, v9

    const v0, 0x4196f5c3    # 18.87f

    mul-float v14, v14, v0

    add-float v4, v6, v14

    move-object/from16 v0, p0

    move v3, v11

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    iput v8, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastCx:I

    iput v9, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastCy:I

    iput v10, v7, Lorg/telegram/ui/Components/PhotoBubbleClip;->lastR:I

    return-void
.end method
