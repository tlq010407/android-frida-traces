.class public abstract Lorg/telegram/tgnet/tl/TL_stars$StarGift;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public attributes:Ljava/util/ArrayList;

.field public availability_issued:I

.field public availability_remains:I

.field public availability_resale:J

.field public availability_total:I

.field public birthday:Z

.field public can_upgrade:Z

.field public convert_stars:J

.field public first_sale_date:I

.field public flags:I

.field public gift_address:Ljava/lang/String;

.field public id:J

.field public last_sale_date:I

.field public limited:Z

.field public num:I

.field public owner_address:Ljava/lang/String;

.field public owner_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public owner_name:Ljava/lang/String;

.field public released_by:Lorg/telegram/tgnet/TLRPC$Peer;

.field public resell_min_stars:J

.field public resell_stars:J

.field public slug:Ljava/lang/String;

.field public sold_out:Z

.field public stars:J

.field public sticker:Lorg/telegram/tgnet/TLRPC$Document;

.field public title:Ljava/lang/String;

.field public upgrade_stars:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarGift;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer196;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer196;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer206;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer206;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer202;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer202;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer195;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer195;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer197;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer197;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer202;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer202;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer198;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique_layer198;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer206;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer206;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer190;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starGift_layer190;-><init>()V

    :goto_0
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in StarGift"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x515e8b12 -> :sswitch_a
        -0x39d535d8 -> :sswitch_9
        -0xd0181b6 -> :sswitch_8
        -0x9c88752 -> :sswitch_7
        0x2cc73c8 -> :sswitch_6
        0x3482f322 -> :sswitch_5
        0x49c577cd -> :sswitch_4
        0x5c62d151 -> :sswitch_3
        0x6411db89 -> :sswitch_2
        0x6a1407cd -> :sswitch_1
        0x7f853c12 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 3

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->sticker:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    instance-of v2, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    iget-object v0, v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
