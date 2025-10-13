.class public Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;
.super Lorg/telegram/ui/Components/CompatDrawable;
.source "SourceFile"


# instance fields
.field private applyBounds:Z

.field private final backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

.field private final path:Landroid/graphics/Path;

.field private final photoViewer:Lorg/telegram/ui/PhotoViewer;

.field private final rect:Landroid/graphics/RectF;

.field private rounding:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/CompatDrawable;-><init>(Landroid/view/View;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rounding:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->applyBounds:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rect:Landroid/graphics/RectF;

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iput-object p3, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->view:Landroid/view/View;

    new-instance p1, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v0}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;IZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Components/CompatDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rounding:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    int-to-float v2, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->view:Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->applyBounds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->photoViewer:Lorg/telegram/ui/PhotoViewer;

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->backgroundBlur:Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    const v0, -0xd9d9da

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    const/high16 v0, 0x33000000

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PhotoViewer;->drawCaptionBlur(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;IIZZZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setApplyBounds(Z)Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoViewerBlurDrawable;->applyBounds:Z

    return-object p0
.end method
