.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->access$800(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->access$900(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->access$200(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->access$1000(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$4;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment;->access$400(Lorg/telegram/ui/Gifts/ResaleGiftsFragment;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
