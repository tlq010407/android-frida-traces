.class Lorg/telegram/ui/ChannelMonetizationLayout$3;
.super Lorg/telegram/ui/Components/OutlineTextContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelMonetizationLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelMonetizationLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$100(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->findPositionByItemId(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$100(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$100(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    iget-object v1, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v1}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$100(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$3;->this$0:Lorg/telegram/ui/ChannelMonetizationLayout;

    invoke-static {v0}, Lorg/telegram/ui/ChannelMonetizationLayout;->access$000(Lorg/telegram/ui/ChannelMonetizationLayout;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
