.class Lorg/telegram/ui/Components/ChatGreetingsView$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatGreetingsView;->setPremiumLock(ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;

.field starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatGreetingsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatGreetingsView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->this$0:Lorg/telegram/ui/Components/ChatGreetingsView;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->clipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    new-instance p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 p2, 0x64

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    const/4 p3, 0x1

    iput-boolean p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    iput-boolean p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    iput-boolean p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    iput p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const p3, 0x3f7ae148    # 0.98f

    iput p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->paused:Z

    const/4 p2, 0x0

    iput p2, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->speedScale:F

    const-wide/16 p3, 0x2ee

    iput-wide p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->minLifeTime:J

    const/16 p3, 0x2ee

    iput p3, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->randLifeTime:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->starParticlesDrawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->resetPositions()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatGreetingsView$1;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p4

    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p1, p3, p5, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method
