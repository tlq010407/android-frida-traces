.class Lorg/telegram/ui/Components/SearchViewPager$13;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;

.field final synthetic val$fragment:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$13;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager$13;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$13;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager$13;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object p1, p1, Lorg/telegram/ui/Components/SearchViewPager;->botsSearchAdapter:Lorg/telegram/ui/Components/DialogsBotsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter;->checkBottom()V

    return-void
.end method
