.class Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;
.super Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdaptiveIconImageView"
.end annotation


# instance fields
.field drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field paint:Landroid/graphics/Paint;

.field particlesScale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;Landroid/content/Context;I)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->this$0:Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;-><init>(Landroid/content/Context;)V

    new-instance p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0xc

    iput v1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const/16 v1, 0x8

    iput v1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size2:I

    const/4 v1, 0x6

    iput v1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size3:I

    if-ne p3, v0, :cond_0

    const/16 v0, 0x3e9

    iput v0, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    :cond_0
    if-nez p3, :cond_1

    const/16 p3, 0x3ea

    iput p3, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;->access$000(Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumStartSmallStarsColor2:I

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->colorKey:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->excludeRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->particlesScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumAppIconsPreviewView$AdaptiveIconImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
