.class public Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundView"
.end annotation


# instance fields
.field public background:Landroid/graphics/drawable/Drawable;

.field drawBackground:Z

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;

.field public tx:F

.field public ty:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->drawBackground:Z

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->tx:F

    iput v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->ty:F

    iget-boolean v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->drawBackground:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-virtual {v1, v3, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$12200(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$12200(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v2

    mul-float v4, v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iput v5, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->ty:F

    iget-object v5, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v4

    add-int/2addr v2, v1

    invoke-virtual {v5, v4, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6100(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v3, v2, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$000(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$100(Lorg/telegram/ui/ThemePreviewActivity;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v1, v1, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    neg-float v1, v1

    iput v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->tx:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4600(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$4800(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5000(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x1000000

    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$12300(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/Components/WallpaperParallaxEffect;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/WallpaperParallaxEffect;->getScale(II)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$12202(Lorg/telegram/ui/ThemePreviewActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$3100(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$12200(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$12200(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$1700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gt p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$12402(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5200(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2, v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$6102(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemePreviewActivity;->access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ThemePreviewActivity;->access$6102(Lorg/telegram/ui/ThemePreviewActivity;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemePreviewActivity;->access$5100(Lorg/telegram/ui/ThemePreviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->croppedWidth:F

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->defaultScrollOffset:F

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    iget v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->currentScrollOffset:F

    mul-float v3, v3, v4

    iput v3, v0, Lorg/telegram/ui/ThemePreviewActivity;->maxScrollOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/BackupImageView;->drawFromStart:Z

    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$100(Lorg/telegram/ui/ThemePreviewActivity;)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemePreviewActivity;->access$6100(Lorg/telegram/ui/ThemePreviewActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p2}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/BackupImageView;->drawFromStart:Z

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ThemePreviewActivity;->access$5202(Lorg/telegram/ui/ThemePreviewActivity;I)I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$BackgroundView;->background:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
