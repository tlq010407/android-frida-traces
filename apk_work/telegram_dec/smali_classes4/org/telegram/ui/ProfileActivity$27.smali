.class Lorg/telegram/ui/ProfileActivity$27;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$16602(Lorg/telegram/ui/ProfileActivity;Z)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lorg/telegram/ui/ProfileActivity;->access$19702(Lorg/telegram/ui/ProfileActivity;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$19700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p2, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    iput-boolean p1, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollingByUser:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$12800(Lorg/telegram/ui/ProfileActivity;)V

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$19900(Lorg/telegram/ui/ProfileActivity;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20000(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p3}, Lorg/telegram/ui/ProfileActivity;->access$17000(Lorg/telegram/ui/ProfileActivity;)I

    move-result p3

    add-int/lit8 p3, p3, -0x8

    if-le p1, p3, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$20100(Lorg/telegram/ui/ProfileActivity;Z)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$14900(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method
