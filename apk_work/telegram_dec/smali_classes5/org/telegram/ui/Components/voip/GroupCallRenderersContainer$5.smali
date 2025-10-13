.class Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/ui/GroupCallActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

.field final synthetic val$toastBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->val$toastBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$100(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->val$toastBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$200(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$300(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$100(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v3}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$400(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v0

    mul-float v3, v3, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$500(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v4}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$300(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->val$toastBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v7}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$600(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)F

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float v7, v7, v2

    float-to-int v2, v7

    add-int/2addr v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v4, v5, v1, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$200(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    invoke-static {v1}, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->access$300(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;)Landroid/widget/TextView;

    move-result-object v1

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$5;->val$toastBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
