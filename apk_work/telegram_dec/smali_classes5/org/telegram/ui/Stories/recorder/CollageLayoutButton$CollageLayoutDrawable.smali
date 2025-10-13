.class public Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CollageLayoutButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollageLayoutDrawable"
.end annotation


# instance fields
.field private cross:Z

.field public final crossPaint:Landroid/graphics/Paint;

.field public final crossXferPaint:Landroid/graphics/Paint;

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;

.field private final radii:[F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;-><init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/CollageLayout;Z)V
    .locals 22

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossXferPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->path:Landroid/graphics/Path;

    const/16 v5, 0x8

    new-array v5, v5, [F

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->radii:[F

    move/from16 v5, p2

    iput-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->cross:Z

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v2, 0x41555555

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const v6, 0x41955555

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    const v9, 0x41755555

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    const v11, 0x3faa3d71    # 1.33f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float v14, v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    neg-float v5, v6

    div-float/2addr v5, v15

    div-float/2addr v2, v15

    div-float/2addr v6, v15

    invoke-virtual {v13, v14, v5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v13, v7, v7, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->columns:[I

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    aget v5, v5, v6

    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v12

    sub-float v13, v8, v13

    int-to-float v5, v5

    div-float/2addr v13, v5

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    sub-int/2addr v5, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v12

    sub-float v5, v9, v5

    iget v14, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    int-to-float v14, v14

    div-float/2addr v5, v14

    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    neg-float v11, v8

    div-float/2addr v11, v15

    iget v7, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    int-to-float v3, v7

    mul-float v17, v13, v3

    add-float v17, v11, v17

    mul-float v3, v3, v12

    move-object/from16 v18, v2

    add-float v2, v17, v3

    move/from16 v17, v8

    neg-float v8, v9

    div-float/2addr v8, v15

    iget v15, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    move/from16 v19, v9

    int-to-float v9, v15

    mul-float v20, v5, v9

    add-float v20, v8, v20

    mul-float v9, v9, v12

    move/from16 v21, v10

    add-float v10, v20, v9

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float v13, v13, v7

    add-float/2addr v11, v13

    add-float/2addr v11, v3

    add-int/lit8 v15, v15, 0x1

    int-to-float v3, v15

    mul-float v5, v5, v3

    add-float/2addr v8, v5

    add-float/2addr v8, v9

    invoke-virtual {v14, v2, v10, v11, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->radii:[F

    iget v3, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->x:I

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget v7, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    if-nez v7, :cond_0

    move/from16 v8, v21

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_1
    aput v8, v2, v7

    const/4 v7, 0x0

    aput v8, v2, v7

    if-ne v3, v6, :cond_1

    iget v7, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    if-nez v7, :cond_1

    move/from16 v7, v21

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x3

    aput v7, v2, v8

    const/4 v8, 0x2

    aput v7, v2, v8

    if-ne v3, v6, :cond_2

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    iget v7, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_2

    move/from16 v6, v21

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x5

    aput v6, v2, v7

    const/4 v7, 0x4

    aput v6, v2, v7

    if-nez v3, :cond_3

    iget v3, v4, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;->y:I

    iget v4, v1, Lorg/telegram/ui/Stories/recorder/CollageLayout;->h:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_4

    move/from16 v5, v21

    goto :goto_4

    :cond_3
    const/4 v6, 0x1

    :cond_4
    :goto_4
    const/4 v3, 0x7

    aput v5, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v14, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    move/from16 v8, v17

    move-object/from16 v2, v18

    move/from16 v9, v19

    move/from16 v10, v21

    const/4 v3, 0x1

    const v11, 0x3faa3d71    # 1.33f

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossXferPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossXferPaint:Landroid/graphics/Paint;

    const v3, 0x40551eb8    # 3.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossXferPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    const v2, 0x3faa3d71    # 1.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->cross:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->cross:Z

    if-eqz v0, :cond_1

    const v0, 0x410a8f5c    # 8.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v3, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v4, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossXferPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v3, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v4, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->crossPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
