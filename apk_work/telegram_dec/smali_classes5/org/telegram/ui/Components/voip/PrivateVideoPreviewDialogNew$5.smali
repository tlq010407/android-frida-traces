.class Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;-><init>(Landroid/content/Context;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v2

    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v2

    int-to-float v5, v0

    int-to-float v1, v1

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v2, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1500(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    const/high16 v6, -0x3f200000    # -7.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v6}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1400(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v7, v7, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew$5;->this$0:Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;->access$1600(Lorg/telegram/ui/Components/voip/PrivateVideoPreviewDialogNew;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
