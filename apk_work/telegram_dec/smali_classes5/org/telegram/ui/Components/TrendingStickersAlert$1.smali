.class Lorg/telegram/ui/Components/TrendingStickersAlert$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/TrendingStickersLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scrolledY:I

.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->scrolledY:I

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget p2, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->scrolledY:I

    add-int/2addr p2, p3

    iput p2, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->scrolledY:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->scrolledY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 p2, 0x42c00000    # 96.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->access$000(Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->access$000(Lorg/telegram/ui/Components/TrendingStickersAlert;)Lorg/telegram/ui/Components/TrendingStickersLayout;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersAlert$1;->this$0:Lorg/telegram/ui/Components/TrendingStickersAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/TrendingStickersAlert;->access$100(Lorg/telegram/ui/Components/TrendingStickersAlert;)V

    :cond_2
    return-void
.end method
