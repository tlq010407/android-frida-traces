.class Lorg/telegram/ui/CallLogActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method public static synthetic $r8$lambda$MRHknVuw8Dxy8DD2SgMnf49GRUY(Lorg/telegram/ui/CallLogActivity$2;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity$2;->lambda$onScrolled$0(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScrolled$0(Lorg/telegram/ui/CallLogActivity$CallLogRow;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/CallLogActivity;->access$2000(Lorg/telegram/ui/CallLogActivity;II)V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p2}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1000(Lorg/telegram/ui/CallLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, v1

    :goto_0
    if-lez p3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1100(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$ListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/CallLogActivity$ListAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$1200(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$1300(Lorg/telegram/ui/CallLogActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/2addr p3, p2

    add-int/lit8 v2, v2, -0x5

    if-lt p3, v2, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1400(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    new-instance v2, Lorg/telegram/ui/CallLogActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/CallLogActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CallLogActivity$2;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1500(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v2, 0x8

    if-eq p3, v2, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1600(Lorg/telegram/ui/CallLogActivity;)I

    move-result p3

    if-ne p3, p2, :cond_4

    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1700(Lorg/telegram/ui/CallLogActivity;)I

    move-result p3

    sub-int/2addr p3, p1

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {v2}, Lorg/telegram/ui/CallLogActivity;->access$1700(Lorg/telegram/ui/CallLogActivity;)I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-le p3, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1600(Lorg/telegram/ui/CallLogActivity;)I

    move-result p3

    const/4 v0, 0x1

    if-le p2, p3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3}, Lorg/telegram/ui/CallLogActivity;->access$1800(Lorg/telegram/ui/CallLogActivity;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3, v2}, Lorg/telegram/ui/CallLogActivity;->access$1900(Lorg/telegram/ui/CallLogActivity;Z)V

    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/CallLogActivity;->access$1602(Lorg/telegram/ui/CallLogActivity;I)I

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/CallLogActivity;->access$1702(Lorg/telegram/ui/CallLogActivity;I)I

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/CallLogActivity;->access$1802(Lorg/telegram/ui/CallLogActivity;Z)Z

    :cond_8
    return-void
.end method
