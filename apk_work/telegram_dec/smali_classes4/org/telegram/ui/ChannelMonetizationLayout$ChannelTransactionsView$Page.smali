.class public Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field private final bot_id:J

.field private final currentAccount:I

.field private final listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private final loadMore:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$BCwqsQ05CoODJBgskCQ_SO8vqTY(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$oo_VVrmZQo6Dr0aQ_-8RvFgI9iQ(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Landroid/content/Context;JIIILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    iput-object v1, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    move-object v4, p2

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move/from16 v3, p5

    iput v3, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->type:I

    move/from16 v5, p6

    iput v5, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->currentAccount:I

    move-wide/from16 v6, p3

    iput-wide v6, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->bot_id:J

    move-object/from16 v11, p9

    iput-object v11, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v2, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->loadMore:Ljava/lang/Runnable;

    new-instance v12, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v8, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)V

    new-instance v9, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)V

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v3, v12

    move/from16 v6, p7

    invoke-direct/range {v3 .. v11}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;

    invoke-direct {v3, p0, p1, v2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page$1;-><init>(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 2

    iget p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->type:I

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->access$800(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->access$1100(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_1
    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->access$700(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionView$Factory;->asTransaction(Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->access$1200(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x7

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 7

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->this$1:Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;

    invoke-static {p2}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;->access$1300(Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView;)J

    move-result-wide v2

    iget v4, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->currentAccount:I

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;

    iget-object v6, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showTransactionSheet(Landroid/content/Context;ZJILorg/telegram/tgnet/tl/TL_stars$StarsTransaction;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkMore()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->isLoadingVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->loadMore:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public isLoadingVisible()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lorg/telegram/ui/ChannelMonetizationLayout$ChannelTransactionsView$Page;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method
