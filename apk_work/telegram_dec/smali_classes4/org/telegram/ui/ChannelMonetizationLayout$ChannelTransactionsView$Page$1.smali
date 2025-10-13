.class Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Landroid/content/Context;JIIILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

.field final synthetic val$loadMore:Ljava/lang/Runnable;

.field final synthetic val$this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->this$2:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    iput-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->val$this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    iput-object p3, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->val$loadMore:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->this$2:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    invoke-static {p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->access$1000(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->this$2:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;->val$loadMore:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
