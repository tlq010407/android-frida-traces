.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

.field final synthetic val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iput-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->val$observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$2;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->reverseLayout:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    return-void
.end method
