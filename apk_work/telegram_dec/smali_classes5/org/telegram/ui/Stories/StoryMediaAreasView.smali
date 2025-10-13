.class public abstract Lorg/telegram/ui/Stories/StoryMediaAreasView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;,
        Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;
    }
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field private final cutPaint:Landroid/graphics/Paint;

.field private hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private final hintsContainer:Landroid/widget/FrameLayout;

.field private lastMediaAreas:Ljava/util/ArrayList;

.field private lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

.field private malicious:Z

.field matrix:Landroid/graphics/Matrix;

.field private parentBitmap:Landroid/graphics/Bitmap;

.field public final parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private parentView:Landroid/view/View;

.field point:[F

.field private final radii:[F

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

.field private shined:Z


# direct methods
.method public static synthetic $r8$lambda$DFcRbJmD1AbMsJyfqJtqYZ63MYk(Lorg/telegram/ui/Stories/StoryMediaAreasView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qdQ5l8e3zN3QaCKysaiqxcg4kAQ(Lorg/telegram/ui/Stories/StoryMediaAreasView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wc8LwHVmh144RDVgKzunkNgkFJ8(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->clipPath:Landroid/graphics/Path;

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->radii:[F

    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    move-object v11, p2

    iput-object v11, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentView:Landroid/view/View;

    move-object/from16 v4, p3

    iput-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x78

    move-object v4, v12

    move-object v5, p2

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v8, 0x168

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v12, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v3, Landroid/widget/FrameLayout;

    move-object v4, p1

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHighlight(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$000(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$100(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$100(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v13

    const v14, 0x3e4ccccd    # 0.2f

    const/4 v15, 0x0

    cmpl-float v1, v11, v15

    if-lez v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/high16 v1, 0x18000000

    invoke-static {v1, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v2, v3, :cond_3

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->highlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-ne v2, v4, :cond_2

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$000(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    cmpl-float v4, v3, v15

    if-lez v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v7, v11

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    invoke-virtual {v4, v5, v6, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v8, v2, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v3, v3, v14

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, v14

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    const/4 v1, 0x0

    if-nez v12, :cond_6

    cmpl-float v2, v13, v15

    if-lez v2, :cond_a

    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->getPlayingBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    const/high16 v2, 0x30000000

    invoke-static {v2, v13}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$200(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v4, 0x3d4ccccd    # 0.05f

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v2

    goto :goto_4

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    const v4, 0x3f866666    # 1.05f

    mul-float v2, v2, v4

    invoke-static {v3, v2, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getRotation()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v8, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget v5, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->flags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_9

    iget-wide v3, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->radius:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v14

    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->clipPath:Landroid/graphics/Path;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v15, v15, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rect:Landroid/graphics/Rect;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v4

    neg-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    invoke-virtual {v8, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float v1, v1, v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float v3, v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    invoke-virtual {v8, v1, v3, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->drawAbove(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;
    .locals 3

    if-eqz p0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onClick$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private onClickAway()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static rotatedRectContainsPoint(FFFFFFF)Z
    .locals 6

    sub-float/2addr p5, p0

    sub-float/2addr p6, p1

    neg-float p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    float-to-double p4, p5

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p4

    float-to-double v2, p6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    sub-double/2addr v0, v4

    double-to-float p6, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p4, p4, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p0

    add-double/2addr p4, v2

    double-to-float p0, p4

    neg-float p1, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    cmpl-float p1, p6, p1

    if-ltz p1, :cond_0

    div-float/2addr p2, p4

    cmpg-float p1, p6, p2

    if-gtz p1, :cond_0

    neg-float p1, p3

    div-float/2addr p1, p4

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    div-float/2addr p3, p4

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public closeHint()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->drawHighlight(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->customDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected getPlayingBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAreaAboveAt(FF)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v8

    move v9, p1

    move v10, p2

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rotatedRectContainsPoint(FFFFFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasClickableViews(FF)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aput p1, v3, v0

    const/4 v4, 0x1

    aput p2, v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    return v4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public hasSelected()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectedForScale()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$100(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->access$000(Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->showEffect(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)V

    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v1, :cond_7

    new-instance v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V

    const-wide/16 v7, 0xc8

    invoke-static {v1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->channel_id:J

    const-string v4, "chat_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;->msg_id:I

    const-string v3, "message_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;

    if-eqz v2, :cond_4

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;->slug:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/nft/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    new-instance v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$1;

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/Stories/StoryMediaAreasView$1;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;I)V

    iput-boolean v4, v1, Lorg/telegram/ui/LocationActivity;->fromStories:Z

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/LocationActivity;->searchStories(Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)Lorg/telegram/ui/LocationActivity;

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;

    if-eqz v7, :cond_5

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->venue_id:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->venue_type:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->title:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->address:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iget-object v7, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->provider:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    :goto_0
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_1

    :cond_5
    instance-of v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    if-eqz v3, :cond_6

    invoke-virtual {v1, v4}, Lorg/telegram/ui/LocationActivity;->setInitialMaxZoom(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v6}, Lorg/telegram/ui/LocationActivity;->setSharingAllowed(Z)V

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v3, v4, v2, v6, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_6
    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClickAway()V

    return-void

    :cond_8
    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastSelectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_9
    new-instance v1, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;)V

    const v2, 0x28ffffff

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setSelectorColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    const-wide/16 v8, 0x1388

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    const/4 v10, -0x1

    const/16 v11, 0x21

    if-eqz v9, :cond_a

    sget v8, Lorg/telegram/messenger/R$string;->StoryViewMessage:I

    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_3

    :cond_a
    instance-of v9, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaStarGift;

    if-eqz v9, :cond_b

    sget v8, Lorg/telegram/messenger/R$string;->StoryViewGift:I

    goto :goto_2

    :cond_b
    instance-of v8, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;

    if-eqz v8, :cond_c

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v8, Lorg/telegram/messenger/R$string;->StoryOpenLink:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v8, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v8, v8, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    iget-object v8, v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaUrl;->url:Ljava/lang/String;

    iget-object v12, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v12}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v12

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f19999a    # 0.6f

    mul-float v13, v13, v14

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v8, v12, v13, v15}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f59999a    # 0.85f

    invoke-direct {v8, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v2, v8, v9, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v10, v14}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v12

    invoke-direct {v8, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v2, v8, v9, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Lorg/telegram/ui/Stories/StoryMediaAreasView$2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$2;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v2, v8, v9, v12, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/high16 v8, 0x41300000    # 11.0f

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v1, v8, v9, v8, v9}, Lorg/telegram/ui/Stories/recorder/HintView2;->setInnerPadding(FFFF)Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    sget v8, Lorg/telegram/messenger/R$string;->StoryViewLocation:I

    goto/16 :goto_2

    :goto_3
    const/4 v8, 0x0

    :goto_4
    new-instance v9, Landroid/text/SpannableString;

    const-string v12, ">"

    invoke-direct {v9, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v14, Lorg/telegram/messenger/R$drawable;->photos_arrow:I

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v8, :cond_d

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_d
    const/high16 v16, 0x40000000    # 2.0f

    :goto_5
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    if-eqz v8, :cond_e

    const/16 v16, 0x0

    goto :goto_6

    :cond_e
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_6
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v13, v3, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v9, v13, v6, v3, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v7, "<"

    invoke-direct {v3, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-direct {v7, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v8, :cond_f

    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_7

    :cond_f
    const/high16 v16, -0x40000000    # -2.0f

    :goto_7
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    if-eqz v8, :cond_10

    const/16 v16, 0x0

    goto :goto_8

    :cond_10
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_8
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    invoke-virtual {v7, v13, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v7, v6, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v9, v3

    :cond_11
    invoke-static {v12, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v2, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v8, :cond_12

    const/16 v2, 0x64

    goto :goto_9

    :cond_12
    const/16 v2, 0x32

    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    const/4 v6, 0x1

    :cond_13
    if-eqz v6, :cond_14

    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x3

    :goto_a
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDirection(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaChannelPost;

    if-eqz v4, :cond_16

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v7, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v15

    if-eqz v6, :cond_15

    add-float/2addr v3, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v7, v4

    int-to-float v4, v7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    goto :goto_b

    :cond_15
    sub-float/2addr v3, v7

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    :goto_c
    sub-float/2addr v3, v4

    :goto_d
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_e

    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v15

    if-eqz v6, :cond_17

    add-float/2addr v3, v4

    goto :goto_d

    :cond_17
    sub-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_c

    :goto_e
    new-instance v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected abstract onHintVisible(Z)V
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v6, v2

    div-int/lit8 v6, v6, 0x2

    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v7, v2, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    div-double/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    div-double/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    double-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    :goto_1
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->rotation:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v6, v2

    div-int/lit8 v6, v6, 0x2

    neg-int v7, v5

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v7, v2, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->x:D

    div-double/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    double-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->y:D

    div-double/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    double-to-float v2, v5

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v6, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    div-double/2addr v6, v4

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v6, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    :goto_1
    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v6, v6, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->h:D

    div-double/2addr v6, v4

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_1
    instance-of v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v6, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    div-double/2addr v6, v4

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v6, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onStoryItemUpdated(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->setViews(Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClickAway()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    if-ne p2, v0, :cond_1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v3, v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightScaleAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    if-nez p2, :cond_5

    return-void

    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    if-eqz v3, :cond_9

    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v3, :cond_7

    new-instance v3, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    invoke-direct {v3, v5, p0, v6, p3}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    if-eqz p1, :cond_6

    iget-object v5, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v3, v5, v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->setViews(Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    :cond_6
    invoke-static {v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    instance-of v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/recorder/Weather$State;-><init>()V

    iget-object v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->emoji:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    iget-wide v6, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->temperature_c:D

    double-to-float v6, v6

    iput v6, v5, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    new-instance v6, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    invoke-direct {v6, v7, v4, v8, v0}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;-><init>(Landroid/content/Context;IFI)V

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setMaxWidth(I)V

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setIsVideo(Z)V

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getEmoji()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setCodeEmoji(ILjava/lang/String;)V

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setText(Ljava/lang/String;)V

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaWeather;->color:I

    const/4 v5, 0x3

    invoke-virtual {v6, v5, v3}, Lorg/telegram/ui/Components/Paint/Views/LocationMarker;->setType(II)V

    new-instance v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v6, v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView$FitViewWidget;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    goto :goto_2

    :cond_8
    new-instance v3, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentView:Landroid/view/View;

    invoke-direct {v3, v5, v6, v2}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    :goto_2
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaAreaCoordinates;->w:D

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    return-void
.end method

.method public shine()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->shine()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract showEffect(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)V
.end method
