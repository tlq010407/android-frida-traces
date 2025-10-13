.class public Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet$Tabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asTabs(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput p2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object v0
.end method

.method private static eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    iget p3, p2, Lorg/telegram/ui/Components/UItem;->id:I

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Ljava/util/ArrayList;

    iget p5, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p2, Lorg/telegram/messenger/Utilities$Callback;

    invoke-virtual {p1, p3, p4, p5, p2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;->set(ILjava/util/ArrayList;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iget-object v1, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;->equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$Tabs;
    .locals 0

    .line 0
    new-instance p2, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 2

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lorg/telegram/ui/Gifts/GiftSheet$Tabs$Factory;->eq(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
