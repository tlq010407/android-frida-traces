.class Lorg/telegram/ui/Components/LinkActionView$2;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/LinkActionView;

.field final synthetic val$finalContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/LinkActionView;Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    iput-object p3, p0, Lorg/telegram/ui/Components/LinkActionView$2;->val$finalContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v0, 0x33000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v0}, Lorg/telegram/ui/Components/LinkActionView;->access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView$2;->val$finalContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v3}, Lorg/telegram/ui/Components/LinkActionView;->access$400(Lorg/telegram/ui/Components/LinkActionView;)[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/LinkActionView;->access$500(Lorg/telegram/ui/Components/LinkActionView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v0}, Lorg/telegram/ui/Components/LinkActionView;->access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v1}, Lorg/telegram/ui/Components/LinkActionView;->access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v3}, Lorg/telegram/ui/Components/LinkActionView;->access$400(Lorg/telegram/ui/Components/LinkActionView;)[F

    move-result-object v3

    aget v3, v3, v1

    sub-float/2addr v3, v0

    add-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v0}, Lorg/telegram/ui/Components/LinkActionView;->access$400(Lorg/telegram/ui/Components/LinkActionView;)[F

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v2}, Lorg/telegram/ui/Components/LinkActionView;->access$400(Lorg/telegram/ui/Components/LinkActionView;)[F

    move-result-object v2

    aget v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/LinkActionView$2;->this$0:Lorg/telegram/ui/Components/LinkActionView;

    invoke-static {v0}, Lorg/telegram/ui/Components/LinkActionView;->access$300(Lorg/telegram/ui/Components/LinkActionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
