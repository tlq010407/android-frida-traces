.class Lorg/telegram/ui/Components/ScrimOptions$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrimOptions;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrimOptions;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrimOptions;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$100(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$200(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$300(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$200(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$400(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$200(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$100(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$100(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$600(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$700(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$800(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$900(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$1000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$1100(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$1000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$1100(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v1}, Lorg/telegram/ui/Components/ScrimOptions;->access$600(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScrimOptions;->access$1000(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v4

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScrimOptions;->access$800(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v2

    neg-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v3}, Lorg/telegram/ui/Components/ScrimOptions;->access$1100(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->access$500(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-virtual {p1}, Landroid/app/Dialog;->onBackPressed()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$1;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ScrimOptions;->layout()V

    return-void
.end method
