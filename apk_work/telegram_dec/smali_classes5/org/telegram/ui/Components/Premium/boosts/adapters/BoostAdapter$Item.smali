.class public Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public boolValue:Z

.field public chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public floatValue:F

.field public intValue:I

.field public intValue2:I

.field public intValue3:I

.field public longValue:J

.field public object:Ljava/lang/Object;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public subType:I

.field public text:Ljava/lang/CharSequence;

.field public user:Ljava/lang/Object;

.field public values:Ljava/util/List;


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method

.method public static asAddChannel()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asBoost(IILjava/lang/Object;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p3, p0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iput-object p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asChat(Lorg/telegram/tgnet/TLRPC$Chat;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asDateEnd(J)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-wide p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    return-object v0
.end method

.method public static asDivider()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asDivider(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    return-object v0
.end method

.method public static asDuration(Ljava/lang/Object;IIJILjava/lang/String;Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p1, p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/16 v1, 0xc

    invoke-direct {v0, v1, p5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    iput-wide p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    iput-boolean p7, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iput-object p6, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asEnterPrize(I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asExpandOptions()Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    return-object v0
.end method

.method public static asHeader(Z)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-boolean p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    return-object v0
.end method

.method public static asOption(Lorg/telegram/tgnet/tl/TL_stars$TL_starsGiveawayOption;IJZZ)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p4}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iput-wide p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    iput-boolean p5, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    return-object v0
.end method

.method public static asParticipants(IIZLjava/util/List;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    iput-boolean p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iput-object p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;ZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iput p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSingleBoost(Ljava/lang/Object;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSlider(Ljava/util/List;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSubTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSubTitleWithCounter(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iput p1, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    return-object v0
.end method

.method public static asSwitcher(Ljava/lang/CharSequence;ZZI)Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;
    .locals 2

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;-><init>(IZ)V

    iput-object p0, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iput-boolean p2, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iput p3, v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    return-object v0
.end method

.method public static eq(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method protected contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    iget v2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-nez v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iget-boolean p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    const/16 v4, 0x11

    if-ne v2, v4, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    iget-wide v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->selectable:Z

    if-ne v2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    const/4 v2, 0x5

    if-ne v3, v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->eq(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_8
    const/16 v2, 0xd

    if-ne v3, v2, :cond_a

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;

    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-nez v2, :cond_3

    return v0

    :cond_3
    const/16 v3, 0x11

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->values:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->eq(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_6
    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->user:Ljava/lang/Object;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    iget-object v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->object:Ljava/lang/Object;

    if-ne v2, v3, :cond_9

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    iget-boolean v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->boolValue:Z

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue2:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue3:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->intValue3:I

    if-ne v2, v3, :cond_9

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    iget-wide v4, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->longValue:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->subType:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->floatValue:F

    iget v3, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->floatValue:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/boosts/adapters/BoostAdapter$Item;->text:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    return v0

    :cond_9
    :goto_1
    return v1
.end method
