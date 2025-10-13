.class Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$000(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$100(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$000(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$200(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)I

    move-result v2

    neg-int v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$300(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$000(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$1;->this$0:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->access$200(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
