.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentTextViewTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4500(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4800(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    if-ge v0, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1, v6, v6, v7, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$21;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$5400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method
