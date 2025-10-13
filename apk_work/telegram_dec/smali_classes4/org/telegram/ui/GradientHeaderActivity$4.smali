.class Lorg/telegram/ui/GradientHeaderActivity$4;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GradientHeaderActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GradientHeaderActivity;

.field final synthetic val$padding:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iput-object p3, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->val$padding:Landroid/graphics/Rect;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$300(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$300(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$600(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->val$padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->access$400(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v4}, Lorg/telegram/ui/GradientHeaderActivity;->access$500(Lorg/telegram/ui/GradientHeaderActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    iget v5, v5, Lorg/telegram/ui/GradientHeaderActivity;->yOffset:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    float-to-int v1, v5

    add-int/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->val$padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->val$padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v5}, Lorg/telegram/ui/GradientHeaderActivity;->access$400(Lorg/telegram/ui/GradientHeaderActivity;)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/GradientHeaderActivity$4;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-static {v0}, Lorg/telegram/ui/GradientHeaderActivity;->access$600(Lorg/telegram/ui/GradientHeaderActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
