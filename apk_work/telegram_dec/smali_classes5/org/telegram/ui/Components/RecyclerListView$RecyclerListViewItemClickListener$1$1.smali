.class Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->onPressItem(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;Landroid/view/View;IFF)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    iput p4, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$x:F

    iput p5, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1100(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->access$1102(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v1, v1, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$900(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$900(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->this$2:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1;->this$1:Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    iget-object v0, v0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;->this$0:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView;->access$700(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$position:I

    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$x:F

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$y:F

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->onItemClick(Landroid/view/View;IFF)V

    :cond_2
    :goto_1
    return-void
.end method
