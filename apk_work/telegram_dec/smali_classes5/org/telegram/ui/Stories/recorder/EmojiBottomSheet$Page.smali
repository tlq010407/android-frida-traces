.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;
.super Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;
    }
.end annotation


# instance fields
.field public adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

.field public layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

.field private lockTop:F

.field private resetOnce:Z

.field public searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

.field public spanCount:I

.field public tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$1ZYXmQRpbitkz3Ll5e5hov8D9rI(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbRZKjPHeEUPUt4E16zuLwaXIZ8(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lambda$new$1(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
    .locals 14

    move-object v11, p0

    move-object v10, p1

    move-object/from16 v2, p2

    iput-object v10, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v1, 0x0

    iput-boolean v1, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;-><init>(Landroid/content/Context;)V

    iput-object v3, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    iput-object v4, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v5, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    invoke-direct {v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v4, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v3, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    new-instance v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDelay(J)V

    const-wide/16 v3, 0xdc

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    const-wide/16 v3, 0xa0

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v1, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v12, -0x1

    invoke-static {v12, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->setOnSearchQuery(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v0, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/4 v1, -0x2

    const/16 v3, 0x30

    invoke-static {v12, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZZILjava/lang/Runnable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iput-object v13, v11, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v12, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    return p1
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 6

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$6200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$6200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->plus:Lorg/telegram/tgnet/TLRPC$Document;

    if-ne v0, v2, :cond_4

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    return-void

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$6300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    if-lt p2, v1, :cond_5

    move-wide v4, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$6300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    if-nez v0, :cond_6

    instance-of p2, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-eqz p2, :cond_6

    check-cast p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$6400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result p1

    invoke-static {p1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback3Return;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback3Return;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$6500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/util/HashMap;

    move-result-object p2

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0, v1}, Lorg/telegram/messenger/Utilities$Callback3Return;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1002(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public atTop()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bind(I)V
    .locals 5

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->emoji:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x5

    if-nez p1, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    :goto_1
    iput v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->spanCount:I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->resetOnce:Z

    const/4 v4, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->ignoreTextChange:Z

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->ignoreTextChange:Z

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToSelected()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4702(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$4800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$4200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->checkCategoriesView(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$5000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez p1, :cond_7

    const/4 v2, 0x5

    :cond_7
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    return-void
.end method

.method public lockTop()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/high16 v1, 0x42500000    # 52.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42cc0000    # 102.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$4600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x42200000    # 40.0f

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public top()F
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->lockTop:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v1

    const/high16 v2, 0x42cc0000    # 102.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public updateTops()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->top()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->setBounds(FF)V

    return-void
.end method
