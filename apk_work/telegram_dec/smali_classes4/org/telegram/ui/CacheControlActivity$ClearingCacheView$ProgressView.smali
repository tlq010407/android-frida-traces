.class Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressView"
.end annotation


# instance fields
.field in:Landroid/graphics/Paint;

.field out:Landroid/graphics/Paint;

.field progress:F

.field progressT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$1:Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->this$1:Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->in:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->out:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x15e

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->progressT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->in:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->out:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->out:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->progressT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->progress:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v4

    mul-float v2, v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->in:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearingCacheView$ProgressView;->progress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
