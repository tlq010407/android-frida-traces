.class Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelBoostLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInternal"
.end annotation


# instance fields
.field booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

.field isLast:Z

.field prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

.field tab:I

.field final synthetic this$0:Lorg/telegram/ui/ChannelBoostLayout;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;ILjava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$Boost;ZI)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iput-boolean p4, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    iput p5, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->tab:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;ILorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    iput-object p3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iput-boolean p4, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChannelBoostLayout;IZ)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->this$0:Lorg/telegram/ui/ChannelBoostLayout;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;

    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    if-eqz v3, :cond_3

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    iget-wide v2, v3, Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;->id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    iget-boolean p1, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    if-eqz v3, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$Boost;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    iget-boolean v3, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->tab:I

    iget p1, p1, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->tab:I

    if-ne v2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->booster:Lorg/telegram/tgnet/tl/TL_stories$Boost;

    iget-object v2, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->prepaidGiveaway:Lorg/telegram/tgnet/tl/TL_stories$PrepaidGiveaway;

    iget-boolean v3, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->isLast:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/ChannelBoostLayout$ItemInternal;->tab:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
