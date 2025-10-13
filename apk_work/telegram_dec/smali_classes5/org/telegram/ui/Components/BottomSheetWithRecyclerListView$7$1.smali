.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object p2, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget v0, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->contentHeight:I

    if-nez v0, :cond_0

    const/high16 p2, 0x43960000    # 300.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget p2, p2, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    iget v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerTotalHeight:I

    iget v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerHeight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingTop:I

    sub-int/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerPaddingBottom:I

    sub-int/2addr v1, v0

    sub-int/2addr p2, v1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7$1;->this$1:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;

    iget-object p1, p1, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->access$600(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
