.class public Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static make(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    iget-object p4, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Premium/boosts/cells/BaseCell;->setDivider(Z)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;
    .locals 6

    .line 0
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p2

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-object p2
.end method
