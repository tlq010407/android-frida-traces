.class public Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/WebActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardDrawable"
.end annotation


# instance fields
.field private animatedState:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private state:Z

.field final synthetic this$0:Lorg/telegram/ui/web/WebActionBar;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 8

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->this$0:Lorg/telegram/ui/web/WebActionBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;)V

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->animatedState:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->animatedState:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->state:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f11eb85    # 0.57f

    mul-float v4, v4, v3

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v5, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    neg-float v4, v4

    div-float/2addr v4, v6

    invoke-static {v7, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    add-float/2addr v7, v1

    invoke-virtual {v4, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    const v5, 0x3e8a3d71    # 0.27f

    mul-float v5, v5, v3

    sub-float v5, v7, v5

    const v8, 0x3f0a3d71    # 0.54f

    mul-float v8, v8, v3

    div-float/2addr v8, v6

    sub-float v9, v2, v8

    invoke-virtual {v4, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    add-float/2addr v8, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    neg-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    mul-float v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float v0, v0, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setState(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/web/WebActionBar$ForwardDrawable;->state:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
