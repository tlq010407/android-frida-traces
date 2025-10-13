.class public Lorg/telegram/ui/Components/ReorderingHintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;
    }
.end annotation


# instance fields
.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final intrinsicHeight:I

.field private final intrinsicWidth:I

.field private final primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

.field private scaleX:F

.field private scaleY:F

.field private final secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

.field private startedTime:J

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeInOutSine:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->interpolator:Landroid/view/animation/Interpolator;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicWidth:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicHeight:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    new-instance v0, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setColor(I)V

    return-void
.end method

.method private drawStage1(Landroid/graphics/Canvas;F)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    const/16 v1, 0x80

    const/16 v2, 0xff

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawStage2(Landroid/graphics/Canvas;F)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/4 v2, -0x8

    const/4 v3, 0x0

    invoke-static {v3, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/4 v2, 0x5

    const/4 v4, 0x6

    invoke-static {v2, v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v2, v2, v5

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x4

    invoke-static {v4, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/16 v1, 0x8

    invoke-static {v3, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawStage3(Landroid/graphics/Canvas;F)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    sub-int/2addr v3, v6

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v3, -0x3f000000    # -8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-static {v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-wide v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v0, v1, -0x12c

    if-ltz v0, :cond_4

    const/high16 v2, 0x43160000    # 150.0f

    const/16 v3, 0x96

    if-ge v0, v3, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage1(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v1, -0x2ee

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v0, :cond_4

    const/16 v5, 0xc8

    if-ge v0, v5, :cond_1

    int-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage2(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_1
    add-int/lit16 v0, v1, -0x4e2

    if-ltz v0, :cond_3

    if-ge v0, v3, :cond_2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage3(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage3(Landroid/graphics/Canvas;F)V

    add-int/lit16 v1, v1, -0x578

    const/16 p1, 0x64

    if-lt v1, p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage2(Landroid/graphics/Canvas;F)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage1(Landroid/graphics/Canvas;F)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/ReorderingHintDrawable;->drawStage1(Landroid/graphics/Canvas;F)V

    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleX:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->intrinsicHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->scaleY:F

    return-void
.end method

.method public resetAnimation()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->primaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->secondaryRectDrawable:Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReorderingHintDrawable$RectDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReorderingHintDrawable;->startedTime:J

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
