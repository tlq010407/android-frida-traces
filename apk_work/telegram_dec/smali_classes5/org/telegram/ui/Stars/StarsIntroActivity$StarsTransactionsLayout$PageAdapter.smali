.class Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageAdapter"
.end annotation


# instance fields
.field private final bot_id:J

.field private final classGuid:I

.field private final context:Landroid/content/Context;

.field private final currentAccount:I

.field private final items:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final ton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZJILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->context:Landroid/content/Context;

    iput p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->currentAccount:I

    iput-boolean p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->ton:Z

    iput p6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->classGuid:I

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-wide p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->bot_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->fill()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 10

    new-instance v9, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->ton:Z

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->bot_id:J

    iget v6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->currentAccount:I

    iget v7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->classGuid:I

    iget-object v8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$Page;-><init>(Landroid/content/Context;ZJIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v9
.end method

.method public fill()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->bot_id:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    cmp-long v7, v0, v2

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->currentAccount:I

    if-nez v7, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->ton:Z

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->bot_id:J

    invoke-virtual {v0, v1, v2, v6}, Lorg/telegram/ui/Stars/BotStarsController;->hasTransactions(JI)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->bot_id:J

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/ui/Stars/BotStarsController;->hasTransactions(JI)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->StarsTransactionsOutgoing:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->StarsTransactionsIncoming:I

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->StarsTransactionsAll:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsTransactionsLayout$PageAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UItem;

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
