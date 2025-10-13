.class public Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-direct {v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asStarGift(ILorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 0
    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-boolean p2, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method

.method public static asStarGift(ILorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 0
    const-class v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setSpanCount(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iput-boolean p2, v0, Lorg/telegram/ui/Components/UItem;->checked:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iput-boolean p5, v0, Lorg/telegram/ui/Components/UItem;->red:Z

    iput-boolean p4, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method


# virtual methods
.method public attachedView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V
    .locals 1

    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->reordering:Z

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    return-void
.end method

.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 6

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p4, p3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    check-cast p3, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setPremiumGift(Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;)V

    goto :goto_1

    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz p4, :cond_2

    move-object v1, p3

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-boolean v2, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    instance-of p4, p3, Ljava/lang/Boolean;

    if-eqz p4, :cond_1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    move v3, p3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v5, p2, Lorg/telegram/ui/Components/UItem;->red:Z

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$StarGift;ZZZZ)V

    goto :goto_1

    :cond_2
    instance-of p4, p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz p4, :cond_3

    check-cast p3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-object p4, p1

    check-cast p4, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-boolean v0, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    invoke-virtual {p4, p3, v0}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setStarsGift(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;Z)V

    :cond_3
    :goto_1
    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/UItem;->reordering:Z

    invoke-virtual {p1, p2, p5}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->setReordering(ZZ)V

    return-void
.end method

.method public bridge synthetic createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$Factory;->createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;
    .locals 0

    .line 0
    new-instance p3, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-direct {p3, p1, p2, p4}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object p3
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 7

    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v1, p2, Lorg/telegram/ui/Components/UItem;->accent:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-eqz v3, :cond_7

    :cond_1
    instance-of v3, v0, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    if-eqz v3, :cond_3

    iget-object p1, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    if-eqz v4, :cond_5

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide p1, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v0, p1, v3

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v4, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    if-eqz v4, :cond_7

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    iget-object p1, v0, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-object v0, v3, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v0, p1, v3

    if-nez v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :cond_7
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v3, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v3, :cond_8

    iget-boolean v0, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-boolean v3, p2, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-ne v0, v3, :cond_8

    iget-wide v3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    iget-wide v5, p2, Lorg/telegram/ui/Components/UItem;->longValue:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method
