.class Lorg/telegram/ui/PrivacyUsersActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->blockedEndReached:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p3}, Lorg/telegram/ui/PrivacyUsersActivity;->access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyUsersActivity;->access$000(Lorg/telegram/ui/PrivacyUsersActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/lit8 p1, p1, -0xa

    if-lt p2, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PrivacyUsersActivity$2;->this$0:Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getBlockedPeers(Z)V

    :cond_1
    return-void
.end method
