.class Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$000(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$100(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$200(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$300(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$200(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$400(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$200(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$100(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$000(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;->access$100(Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

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

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog$1;->this$0:Lorg/telegram/ui/Components/Paint/Views/StoryLinkPreviewDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->onBackPressed()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
