.class Lorg/telegram/ui/ArchivedStickersActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArchivedStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArchivedStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArchivedStickersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$000(Lorg/telegram/ui/ArchivedStickersActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$100(Lorg/telegram/ui/ArchivedStickersActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$200(Lorg/telegram/ui/ArchivedStickersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ArchivedStickersActivity;->access$300(Lorg/telegram/ui/ArchivedStickersActivity;)I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArchivedStickersActivity$3;->this$0:Lorg/telegram/ui/ArchivedStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ArchivedStickersActivity;->access$400(Lorg/telegram/ui/ArchivedStickersActivity;)V

    :cond_0
    return-void
.end method
