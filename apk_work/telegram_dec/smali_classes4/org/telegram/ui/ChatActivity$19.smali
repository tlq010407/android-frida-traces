.class Lorg/telegram/ui/ChatActivity$19;
.super Landroidx/recyclerview/widget/GridLayoutManagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field computingScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$IwaJh7PWIP0C1PTYnw-3Cb-XH0E(Lorg/telegram/ui/ChatActivity$19;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$19;->lambda$onLayoutChildren$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;IIZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private synthetic lambda$onLayoutChildren$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    return p1
.end method

.method protected getParentStart()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getStartAfterPadding()I

    move-result v0

    return v0
.end method

.method public getStartForFixGap()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v0, v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$19;->computingScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, v1, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method protected hasSiblingChild(I)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$20200(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->getValidGroupedMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-result-object p1

    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v2, v3, :cond_3

    iget-byte v2, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v3, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ne v2, v3, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-ne v4, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v6, p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-gt v5, v6, :cond_2

    iget-byte v4, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-lt v4, v6, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/telegram/ui/ChatActivity$19$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$19$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$19;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public scrollToPositionWithOffset(IIZ)V
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v0, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    invoke-static {v2, p1}, Lorg/telegram/ui/ChatActivity;->access$15416(Lorg/telegram/ui/ChatActivity;F)F

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->access$15402(Lorg/telegram/ui/ChatActivity;F)F

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v6, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v9, v8, Lorg/telegram/ui/ChatActivity;->reversed:Z

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v4

    :goto_2
    if-ne v6, v8, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float v2, v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_3

    :cond_3
    move v2, p1

    :goto_3
    invoke-super {p0, v2, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_6

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    :cond_6
    if-lez p1, :cond_f

    if-nez v2, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p2, :cond_8

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p2, p2, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p2, :cond_f

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    if-eq p2, v4, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->isMultiselect()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$16300(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p3, p2, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p2

    if-eqz p3, :cond_a

    invoke-virtual {p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateTopic()V

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lorg/telegram/ui/ChatPullingDownDrawable;->updateDialog()V

    :cond_b
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15600(Lorg/telegram/ui/ChatActivity;)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/high16 p3, 0x42dc0000    # 110.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v3

    if-gez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr v6, p2

    const p3, 0x3f266666    # 0.65f

    mul-float v6, v6, p3

    mul-float p2, p2, v5

    :goto_6
    add-float/2addr v6, p2

    goto :goto_7

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v7, 0x3d4ccccd    # 0.05f

    cmpg-float p2, p2, v3

    if-gez p2, :cond_e

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    const/high16 p3, 0x42480000    # 50.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float/2addr v6, p2

    mul-float v6, v6, v5

    mul-float p2, p2, v7

    goto :goto_6

    :cond_e
    const v6, 0x3d4ccccd    # 0.05f

    :goto_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    int-to-float p1, p1

    mul-float p1, p1, v6

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$15416(Lorg/telegram/ui/ChatActivity;F)F

    float-to-int p1, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->onScrolled(I)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$15500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatPullingDownDrawable;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$15400(Lorg/telegram/ui/ChatActivity;)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-ne p2, v4, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatPullingDownDrawable;->showBottomPanel(Z)V

    :cond_12
    return v2
.end method

.method public shouldLayoutChildFromOpositeSide(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$19;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$15302(Lorg/telegram/ui/ChatActivity;Z)Z

    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
