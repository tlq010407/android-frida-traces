.class Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final p:[I

.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

.field final synthetic val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;Landroid/content/Context;Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    iput-object p3, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->p:[I

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$25900(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26000(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26100(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26200(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26100(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26300(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/BitmapShader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26100(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26000(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$25900(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)F

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

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$26000(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->p:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->dismiss()V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->p:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->p:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;->access$26400(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;)Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->val$cell:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog$1;->this$0:Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;

    invoke-static {v2}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;->access$25900(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCell$EncryptionCallDialog;)F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->draw(Landroid/graphics/Canvas;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method
