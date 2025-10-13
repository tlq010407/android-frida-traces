.class Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    iput-boolean v0, v1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->haptic:Z

    :cond_0
    if-nez p2, :cond_5

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;

    if-eqz v1, :cond_1

    iget v4, v3, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->progress:F

    iget v5, v1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$StickerView;->progress:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_1
    move-object v1, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->access$000(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/view/View;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->haptic:Z

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-static {p1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->access$100(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->autoScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->access$000(Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
