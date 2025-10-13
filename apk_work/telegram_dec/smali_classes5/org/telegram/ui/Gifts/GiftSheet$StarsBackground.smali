.class public Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsBackground"
.end annotation


# instance fields
.field public final backgroundPaint:Landroid/graphics/Paint;

.field private final color:I

.field public final particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

.field private final particlesColor:I

.field public final path:Landroid/graphics/Path;

.field public final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 0
    const/16 v0, 0x80

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    const/16 v3, 0x19

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;-><init>(II)V

    iput-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iput p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesColor:I

    iput p2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->color:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->setBounds(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->process()V

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particles:Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;

    iget v1, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->particlesColor:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stars/StarsReactionsSheet$Particles;->draw(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/GiftSheet$StarsBackground;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
