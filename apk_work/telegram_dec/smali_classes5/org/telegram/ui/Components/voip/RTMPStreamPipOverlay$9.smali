.class Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->showInternal(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3500(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay$9;->this$0:Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;->access$3500(Lorg/telegram/ui/Components/voip/RTMPStreamPipOverlay;)Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    return-void
.end method
