.class Lorg/telegram/ui/TodoItemMenu$5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TodoItemMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TodoItemMenu;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TodoItemMenu;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v0}, Lorg/telegram/ui/TodoItemMenu;->access$1400(Lorg/telegram/ui/TodoItemMenu;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1500(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1600(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->access$1500(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1600(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v2

    :goto_1
    float-to-int v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_2
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1700(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1800(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v1}, Lorg/telegram/ui/TodoItemMenu;->access$1700(Lorg/telegram/ui/TodoItemMenu;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1800(Lorg/telegram/ui/TodoItemMenu;)F

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1900(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/TodoItemMenu$5;->this$0:Lorg/telegram/ui/TodoItemMenu;

    invoke-static {v2}, Lorg/telegram/ui/TodoItemMenu;->access$1900(Lorg/telegram/ui/TodoItemMenu;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTotalWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
