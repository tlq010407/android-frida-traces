.class public Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;
.super Lorg/telegram/ui/Cells/TextCell;
.source "SourceFile"


# instance fields
.field private final colorKey:I

.field private final particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 p3, 0x1e

    const/4 v0, 0x1

    invoke-direct {p1, v0, p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    if-ne p2, v0, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_starsGradient1:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->colorKey:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->colorKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/TextCell;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/TextCell;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    add-float/2addr p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    add-float/2addr p2, p4

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    sub-float p5, p1, p5

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-virtual {p3, p5, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/ProfilePremiumCell;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    return-void
.end method
