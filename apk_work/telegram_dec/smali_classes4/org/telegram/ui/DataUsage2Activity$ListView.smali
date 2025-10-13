.class Lorg/telegram/ui/DataUsage2Activity$ListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsage2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataUsage2Activity$ListView$Size;,
        Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;

.field private animateChart:Z

.field private chart:Lorg/telegram/ui/Components/CacheChart;

.field private chartSegments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

.field private collapsed:[Z

.field currentType:I

.field private empty:Z

.field private itemInners:Ljava/util/ArrayList;

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private oldItems:Ljava/util/ArrayList;

.field private removedSegments:Ljava/util/ArrayList;

.field private segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

.field private tempPercents:[I

.field private tempSizes:[F

.field final synthetic this$0:Lorg/telegram/ui/DataUsage2Activity;

.field private totalSize:J

.field private totalSizeIn:J

.field private totalSizeOut:J


# direct methods
.method public static synthetic $r8$lambda$FIpa3WzTDpRTgdSrQCQk9IPBp-o(Lorg/telegram/ui/DataUsage2Activity$ListView$Size;Lorg/telegram/ui/DataUsage2Activity$ListView$Size;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->lambda$setup$2(Lorg/telegram/ui/DataUsage2Activity$ListView$Size;Lorg/telegram/ui/DataUsage2Activity$ListView$Size;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LkDBR7gWcjd0jk81TL6dqOZFtHo(Lorg/telegram/ui/DataUsage2Activity$ListView;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataUsage2Activity$ListView;->lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$twh733hU_y609w5zU4Fub3d9oY0(Lorg/telegram/ui/DataUsage2Activity$ListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataUsage2Activity$ListView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DataUsage2Activity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->animateChart:Z

    iput p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->oldItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempSizes:[F

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempPercents:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->removedSegments:Ljava/util/ArrayList;

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->collapsed:[Z

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;-><init>(Lorg/telegram/ui/DataUsage2Activity$ListView;Lorg/telegram/ui/DataUsage2Activity$1;)V

    iput-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->adapter:Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DataUsage2Activity$ListView;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0xdc

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DataUsage2Activity$ListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DataUsage2Activity$ListView;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DataUsage2Activity$ListView;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DataUsage2Activity$ListView;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DataUsage2Activity$ListView;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DataUsage2Activity$ListView;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DataUsage2Activity$ListView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->animateChart:Z

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/DataUsage2Activity$ListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->animateChart:Z

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DataUsage2Activity$ListView;)[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->chartSegments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DataUsage2Activity$ListView;)[Z
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->collapsed:[Z

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataUsage2Activity$ListView;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->chart:Lorg/telegram/ui/Components/CacheChart;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/DataUsage2Activity$ListView;Lorg/telegram/ui/Components/CacheChart;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->chart:Lorg/telegram/ui/Components/CacheChart;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataUsage2Activity$ListView;)[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    return-object p0
.end method

.method private formatPercent(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "<%d%%"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "%d%%"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getBytesCount(I)J
    .locals 4

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getSentBytesCount(I)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getReceivedBytesCount(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getReceivedBytesCount(I)J
    .locals 5

    iget v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3200(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3300(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v0

    add-long/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3400(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3100(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getReceivedItemsCount(I)I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2400(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v3}, Lorg/telegram/ui/DataUsage2Activity;->access$2500(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v1}, Lorg/telegram/ui/DataUsage2Activity;->access$2600(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2300(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getRecivedItemsCount(II)I

    move-result p1

    return p1
.end method

.method private getResetStatsDate()J
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v2, :cond_0

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v3}, Lorg/telegram/ui/DataUsage2Activity;->access$3600(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v5

    iget-object v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v3}, Lorg/telegram/ui/DataUsage2Activity;->access$3700(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v7

    iget-object v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v3}, Lorg/telegram/ui/DataUsage2Activity;->access$3800(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v9

    new-array v1, v1, [J

    aput-wide v5, v1, v0

    aput-wide v7, v1, v4

    aput-wide v9, v1, v2

    invoke-direct {p0, v1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->min([J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3500(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/StatsController;->getResetStatsDate(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSentBytesCount(I)J
    .locals 5

    iget v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2800(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v3

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2900(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v0

    add-long/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$3000(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v0

    add-long/2addr v3, v0

    return-wide v3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2700(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSentItemsCount(I)I
    .locals 4

    iget v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$2000(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v3}, Lorg/telegram/ui/DataUsage2Activity;->access$2100(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v1}, Lorg/telegram/ui/DataUsage2Activity;->access$2200(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {v0}, Lorg/telegram/ui/DataUsage2Activity;->access$1900(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/messenger/StatsController;->getSentItemsCount(II)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 6

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->removedSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    iget-wide v1, v0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->removedSegments:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {p2}, Lorg/telegram/ui/DataUsage2Activity;->access$3900(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/StatsController;->resetStats(I)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {p1}, Lorg/telegram/ui/DataUsage2Activity;->access$4000(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/StatsController;->resetStats(I)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-static {p1}, Lorg/telegram/ui/DataUsage2Activity;->access$4100(Lorg/telegram/ui/DataUsage2Activity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/StatsController;->resetStats(I)V

    iput-boolean p2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->animateChart:Z

    invoke-direct {p0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->setup()V

    invoke-direct {p0, p2}, Lorg/telegram/ui/DataUsage2Activity$ListView;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 2

    instance-of v0, p1, Lorg/telegram/ui/DataUsage2Activity$Cell;

    if-eqz v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    if-eqz p1, :cond_2

    iget p1, p1, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->index:I

    const/4 p2, 0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->collapsed:[Z

    aget-boolean v1, v0, p1

    xor-int/2addr v1, p2

    aput-boolean v1, v0, p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/DataUsage2Activity$ListView;->updateRows(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    new-instance v0, Lorg/telegram/ui/DataAutoDownloadActivity;

    iget v1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    sub-int/2addr v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_2

    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->ResetStatisticsAlertTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->ResetStatisticsAlert:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DataUsage2Activity$ListView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setup$2(Lorg/telegram/ui/DataUsage2Activity$ListView$Size;Lorg/telegram/ui/DataUsage2Activity$ListView$Size;)I
    .locals 2

    iget-wide v0, p1, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private varargs min([J)J
    .locals 6

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-wide v3, p1, v2

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private setup()V
    .locals 19

    move-object/from16 v11, p0

    const/4 v0, 0x6

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getBytesCount(I)J

    move-result-wide v1

    iput-wide v1, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSize:J

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getReceivedBytesCount(I)J

    move-result-wide v1

    iput-wide v1, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSizeIn:J

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getSentBytesCount(I)J

    move-result-wide v0

    iput-wide v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSizeOut:J

    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    const/4 v1, 0x7

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    iput-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    :cond_0
    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->chartSegments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    if-nez v0, :cond_1

    new-array v0, v1, [Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    iput-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->chartSegments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    :cond_1
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    array-length v0, v0

    if-ge v12, v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getBytesCount(I)J

    move-result-wide v13

    iget-object v15, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->chartSegments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    iget-object v10, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    new-instance v16, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getReceivedBytesCount(I)J

    move-result-wide v5

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getSentBytesCount(I)J

    move-result-wide v7

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getReceivedItemsCount(I)I

    move-result v9

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v0

    aget v0, v0, v12

    invoke-direct {v11, v0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getSentItemsCount(I)I

    move-result v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v12

    move-wide v3, v13

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;-><init>(Lorg/telegram/ui/DataUsage2Activity$ListView;IJJJII)V

    aput-object v16, v18, v12

    aput-object v16, v15, v12

    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempSizes:[F

    long-to-float v1, v13

    iget-wide v2, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSize:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    new-instance v1, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/DataUsage2Activity$ListView$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempSizes:[F

    iget-object v1, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempPercents:[I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    iget-object v0, v11, Lorg/telegram/ui/DataUsage2Activity$ListView;->collapsed:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-object v4, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->oldItems:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSize:J

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->YourNetworkUsageSince:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterStats()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getResetStatsDate()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v6

    const-string v5, "YourNetworkUsageSince"

    invoke-static {v5, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->NoNetworkUsageSince:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/LocaleController;->getFormatterStats()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getResetStatsDate()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v6

    const-string v5, "NoNetworkUsageSince"

    invoke-static {v5, v4, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSubtitle(Ljava/lang/String;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    array-length v11, v10

    const/16 v12, 0x21

    if-ge v9, v11, :cond_5

    aget-object v10, v10, v9

    iget-wide v13, v10, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->size:J

    iget v10, v10, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->index:I

    iget-boolean v11, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->empty:Z

    if-nez v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->removedSegments:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v11, 0x1

    :goto_3
    cmp-long v15, v13, v7

    if-gtz v15, :cond_3

    if-nez v11, :cond_3

    move-object/from16 v16, v4

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_3
    new-instance v11, Landroid/text/SpannableString;

    iget-object v15, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->tempPercents:[I

    aget v15, v15, v10

    invoke-direct {v0, v15}, Lorg/telegram/ui/DataUsage2Activity$ListView;->formatPercent(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v11, v15, v6, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v15, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v15

    invoke-virtual {v11, v1, v6, v15, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lorg/telegram/ui/DataUsage2Activity$CustomCharacterSpan;

    iget-object v15, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    move-object/from16 v16, v4

    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-direct {v1, v15, v3, v4}, Lorg/telegram/ui/DataUsage2Activity$CustomCharacterSpan;-><init>(Lorg/telegram/ui/DataUsage2Activity;D)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v11, v1, v6, v3, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$400()[I

    move-result-object v1

    aget v1, v1, v10

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$500()[I

    move-result-object v3

    aget v3, v3, v10

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v3

    cmp-long v4, v13, v7

    if-nez v4, :cond_4

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$600()[I

    move-result-object v4

    aget v4, v4, v10

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$600()[I

    move-result-object v4

    aget v4, v4, v10

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v10, v2, [Ljava/lang/CharSequence;

    aput-object v4, v10, v6

    const-string v4, "  "

    const/4 v12, 0x1

    aput-object v4, v10, v12

    const/4 v4, 0x2

    aput-object v11, v10, v4

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_4
    invoke-static {v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v1, v3, v4, v10}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v9, v12

    move-object/from16 v4, v16

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_13

    new-instance v1, Landroid/text/SpannableString;

    const-string v4, "^"

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_mini_upload:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v11

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v14, 0x41800000    # 16.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v17, 0x41900000    # 18.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v6, v11, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v11, 0x2

    invoke-direct {v2, v4, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v6, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannableString;

    const-string v4, "v"

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mini_download:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v10

    invoke-direct {v11, v10, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v9, Landroid/text/style/ImageSpan;

    const/4 v10, 0x2

    invoke-direct {v9, v4, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v9, v6, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    iget v9, v9, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->index:I

    if-ltz v9, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->collapsed:[Z

    aget-boolean v10, v10, v9

    if-nez v10, :cond_9

    iget-object v10, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->segments:[Lorg/telegram/ui/DataUsage2Activity$ListView$Size;

    aget-object v9, v10, v9

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v10

    iget v11, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->index:I

    aget v10, v10, v11

    if-nez v10, :cond_a

    iget-wide v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    cmp-long v12, v10, v7

    if-gtz v12, :cond_6

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outCount:I

    if-lez v10, :cond_7

    :cond_6
    const/4 v10, 0x1

    add-int/2addr v4, v10

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outCount:I

    const-string v11, "OutgoingCallsCount"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v6, v6, v10, v11}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    iget-wide v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inSize:J

    cmp-long v12, v10, v7

    if-gtz v12, :cond_8

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inCount:I

    if-lez v10, :cond_9

    :cond_8
    const/4 v10, 0x1

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_a

    :goto_8
    add-int/2addr v4, v10

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inCount:I

    const-string v11, "IncomingCallsCount"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    :goto_9
    iget-wide v11, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inSize:J

    invoke-static {v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v6, v10, v9}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity;->access$300()[I

    move-result-object v10

    iget v11, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->index:I

    aget v10, v10, v11

    const-string v11, " "

    const/4 v12, 0x1

    if-eq v10, v12, :cond_e

    iget-wide v13, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    cmp-long v10, v13, v7

    if-gtz v10, :cond_b

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outCount:I

    if-lez v10, :cond_c

    :cond_b
    add-int/2addr v4, v12

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outCount:I

    const-string v13, "FilesSentCount"

    invoke-static {v13, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/CharSequence;

    aput-object v1, v14, v6

    aput-object v11, v14, v12

    const/4 v12, 0x2

    aput-object v10, v14, v12

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-wide v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v6, v6, v10, v12}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_c
    iget-wide v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inSize:J

    cmp-long v10, v12, v7

    if-gtz v10, :cond_d

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inCount:I

    if-lez v10, :cond_9

    :cond_d
    const/4 v10, 0x1

    add-int/2addr v4, v10

    iget v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inCount:I

    const-string v13, "FilesReceivedCount"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/CharSequence;

    aput-object v2, v14, v6

    aput-object v11, v14, v10

    const/4 v10, 0x2

    aput-object v12, v14, v10

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_9

    :cond_e
    iget-wide v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    cmp-long v10, v12, v7

    if-gtz v10, :cond_f

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outCount:I

    if-lez v10, :cond_10

    :cond_f
    const/4 v10, 0x1

    add-int/2addr v4, v10

    sget v12, Lorg/telegram/messenger/R$string;->BytesSent:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/CharSequence;

    aput-object v1, v14, v6

    aput-object v11, v14, v10

    const/4 v10, 0x2

    aput-object v12, v14, v10

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-wide v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->outSize:J

    invoke-static {v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v6, v6, v10, v12}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_10
    iget-wide v12, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inSize:J

    cmp-long v10, v12, v7

    if-gtz v10, :cond_11

    iget v10, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inCount:I

    if-lez v10, :cond_9

    :cond_11
    const/4 v10, 0x1

    add-int/2addr v4, v10

    sget v12, Lorg/telegram/messenger/R$string;->BytesReceived:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/CharSequence;

    aput-object v2, v14, v6

    aput-object v11, v14, v10

    const/4 v11, 0x2

    aput-object v12, v14, v11

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    iget-wide v13, v9, Lorg/telegram/ui/DataUsage2Activity$ListView$Size;->inSize:J

    invoke-static {v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v6, v6, v12, v9}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_a
    add-int/2addr v4, v10

    goto/16 :goto_6

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->empty:Z

    if-nez v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->DataUsageSectionsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSeparator(Ljava/lang/String;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-boolean v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->empty:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$string;->TotalNetworkUsage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asHeader(Ljava/lang/String;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_data_sent:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/R$string;->BytesSent:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSizeOut:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v4, v6, v7}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_filled_data_received:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/R$string;->BytesReceived:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->totalSizeIn:J

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v2, v4, v6, v7}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSeparator(Ljava/lang/String;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSeparator()Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_download_settings:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/R$string;->AutomaticDownloadSettings:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    invoke-static {v7, v3, v4, v6, v2}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asCell(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    sget v1, Lorg/telegram/messenger/R$string;->AutomaticDownloadSettingsInfoWiFi:I

    :goto_b
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_17
    sget v1, Lorg/telegram/messenger/R$string;->AutomaticDownloadSettingsInfoRoaming:I

    goto :goto_b

    :cond_18
    sget v1, Lorg/telegram/messenger/R$string;->AutomaticDownloadSettingsInfoMobile:I

    goto :goto_b

    :goto_c
    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSeparator(Ljava/lang/String;)Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    sget v4, Lorg/telegram/messenger/R$string;->ResetStatistics:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v3, v5, v4, v2}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;-><init>(ILjava/lang/CharSequence;Lorg/telegram/ui/DataUsage2Activity$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/ui/DataUsage2Activity$ItemInner;->asSeparator()Lorg/telegram/ui/DataUsage2Activity$ItemInner;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->adapter:Lorg/telegram/ui/DataUsage2Activity$ListView$Adapter;

    if-eqz v1, :cond_1c

    if-eqz p1, :cond_1b

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$ListView;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_d

    :cond_1b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1c
    :goto_d
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public setType(I)V
    .locals 5

    iput p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->currentType:I

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->removedSegments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->getBytesCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity$ListView;->empty:Z

    invoke-direct {p0}, Lorg/telegram/ui/DataUsage2Activity$ListView;->setup()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$ListView;->updateRows(Z)V

    return-void
.end method
