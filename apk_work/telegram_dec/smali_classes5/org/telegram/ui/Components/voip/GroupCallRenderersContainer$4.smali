.class Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;
.super Landroid/view/View;
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

.field final synthetic val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v1, v1, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->unpinTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->this$0:Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;

    iget-object v2, v2, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer;->pinDrawable:Lorg/telegram/ui/Components/CrossOutDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CrossOutDrawable;->getProgress()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/GroupCallRenderersContainer$4;->val$pinRippleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
