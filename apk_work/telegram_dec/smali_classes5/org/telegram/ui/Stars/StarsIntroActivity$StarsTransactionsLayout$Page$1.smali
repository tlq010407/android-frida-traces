.class Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;-><init>(Landroid/content/Context;ZJIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->access$1300(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->isLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page$1;->this$0:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;->access$1400(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
