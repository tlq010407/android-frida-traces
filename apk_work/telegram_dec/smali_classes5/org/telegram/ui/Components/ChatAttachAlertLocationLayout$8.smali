.class Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2702(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2802(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    :cond_1
    if-nez p2, :cond_2

    const/high16 p1, 0x41500000    # 13.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackgroundPaddingTop()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:[I

    aget v1, v1, v0

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;->access$2916(Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;F)F

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertLocationLayout;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    return-void
.end method
