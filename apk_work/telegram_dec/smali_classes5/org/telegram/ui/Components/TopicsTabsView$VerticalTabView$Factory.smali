.class public Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asAdd(Z)Lorg/telegram/ui/Components/UItem;
    .locals 3

    const-class v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Lorg/telegram/ui/Components/UItem;->id:I

    const-wide/16 v1, -0x2

    iput-wide v1, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method

.method public static asAll(Z)Lorg/telegram/ui/Components/UItem;
    .locals 3

    const-class v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/UItem;->id:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method

.method public static asLoading(I)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->red:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->checked:Z

    return-object v0
.end method

.method public static asTab(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    iget p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p0

    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    const/4 p0, 0x0

    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setLoading()V

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-nez p3, :cond_2

    iget-wide p3, p2, Lorg/telegram/ui/Components/UItem;->longValue:J

    const-wide/16 v0, -0x2

    cmp-long v2, p3, v0

    iget-boolean p3, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-nez v2, :cond_1

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setAdd(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setAll(ZZ)V

    goto :goto_0

    :cond_2
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p4, :cond_4

    iget-boolean p4, p2, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    if-nez p4, :cond_3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setMf(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    goto :goto_0

    :cond_3
    iget-wide v0, p2, Lorg/telegram/ui/Components/UItem;->dialogId:J

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-virtual {p1, v0, v1, p3, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->set(JLorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)V

    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->isReorderAllowed()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->access$600(Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;->setReorder(Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;
    .locals 0

    .line 0
    new-instance p3, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Components/TopicsTabsView$VerticalTabView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p3
.end method
