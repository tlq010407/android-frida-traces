.class public Lorg/telegram/ui/Components/Paint/Views/RoundView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;
    }
.end annotation


# instance fields
.field private a:F

.field private anchor:I

.field private baseSize:Lorg/telegram/ui/Components/Size;

.field private final clipPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private draw:Z

.field public final dst:Landroid/graphics/Rect;

.field private final mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private mirrored:Z

.field private shown:Z

.field private shownT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final src:Landroid/graphics/Rect;

.field public textureView:Landroid/view/TextureView;

.field private textureViewParams:Landroid/widget/FrameLayout$LayoutParams;

.field public thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;)V
    .locals 14

    move-object v7, p0

    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 v8, -0x1

    iput v8, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->anchor:I

    const/4 v9, 0x0

    iput-boolean v9, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrored:Z

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->src:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->dst:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    const/4 v11, 0x1

    iput-boolean v11, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->draw:Z

    iput-boolean v11, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shown:Z

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v12

    move-object v1, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shownT:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v11}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    move-object/from16 v0, p5

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->baseSize:Lorg/telegram/ui/Components/Size;

    invoke-static/range {p6 .. p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v10, v9, v9, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    new-instance v0, Landroid/view/TextureView;

    move-object v1, p1

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v8, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureViewParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, v8

    move-object v1, p0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, v7, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->updatePosition()V

    invoke-virtual {p0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/RoundView$RoundViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/RoundView;Landroid/content/Context;)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->draw:Z

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return v9

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    move-object/from16 v10, p2

    if-ne v10, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrored:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    const/4 v6, 0x0

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v3, v3, v1

    sub-float v1, v4, v1

    mul-float v3, v3, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v3, v3, v1

    invoke-virtual {v8, v6, v3}, Landroid/graphics/Canvas;->skew(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shownT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shown:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float v12, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float v13, v1, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/4 v15, 0x0

    cmpg-float v1, v11, v4

    if-gez v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/16 v6, 0x80

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v12, v13, v14, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->dst:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->src:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->dst:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    mul-float v14, v14, v11

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v12, v13, v14, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->dst:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v9, v9, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->src:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->dst:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2, v3, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;->drawForThumb:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v1

    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method public getAnchor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->anchor:I

    return v0
.end method

.method public getBaseSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->baseSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v2, v5

    mul-float v2, v2, v0

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v4, v3, v4

    sub-float/2addr v6, v4

    mul-float v6, v6, v0

    sub-float/2addr v1, v2

    mul-float v3, v3, v0

    invoke-direct {v5, v2, v6, v1, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public isMirrored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrored:Z

    return v0
.end method

.method public mirror(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrored:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrored:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p4

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget p2, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p2, p2

    iget p1, p1, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    int-to-float v3, p1

    mul-float v1, v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    int-to-float v2, p2

    div-float/2addr v2, v4

    float-to-int v2, v2

    :goto_1
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public resizeTextureView(II)V
    .locals 1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->a:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDraw(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->draw:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->draw:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShown(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shown:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shown:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->shownT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public trashCenter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updatePosition()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/RoundView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
