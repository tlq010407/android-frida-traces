.class Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualViewHelper"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->onceVisible:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->AccActionResume:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AccActionPause:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->onceRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView$VirtualViewHelper;->this$1:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->voiceOnce:Z

    if-eqz p1, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->AccActionOnceDeactivate:I

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->AccActionOnceActivate:I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
