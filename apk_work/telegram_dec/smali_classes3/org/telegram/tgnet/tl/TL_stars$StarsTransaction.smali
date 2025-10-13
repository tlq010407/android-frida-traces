.class public Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public ads_proceeds_from_date:I

.field public ads_proceeds_to_date:I

.field public amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field public bot_payload:[B

.field public business_transfer:Z

.field public date:I

.field public description:Ljava/lang/String;

.field public extended_media:Ljava/util/ArrayList;

.field public failed:Z

.field public flags:I

.field public floodskip:Z

.field public floodskip_number:I

.field public gift:Z

.field public giveaway_post_id:I

.field public id:Ljava/lang/String;

.field public msg_id:I

.field public paid_message:Z

.field public paid_messages:I

.field public peer:Lorg/telegram/tgnet/tl/TL_stars$StarsTransactionPeer;

.field public pending:Z

.field public photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

.field public premium_gift:Z

.field public premium_gift_months:I

.field public reaction:Z

.field public received_by:Lorg/telegram/tgnet/TLRPC$Peer;

.field public refund:Z

.field public sent_by:Lorg/telegram/tgnet/TLRPC$Peer;

.field public stargift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public stargift_resale:Z

.field public stargift_upgrade:Z

.field public starref_amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field public starref_commission_permille:I

.field public starref_peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public subscription:Z

.field public subscription_period:I

.field public title:Ljava/lang/String;

.field public transaction_date:I

.field public transaction_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->ofStars(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->amount:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;->extended_media:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsTransaction;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer199;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer199;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer186;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer186;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer194;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer194;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer185;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer185;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer191;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer191;-><init>()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer188;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer188;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer199_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer199_2;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer181;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer181;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer182;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer182;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer205;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTransaction_layer205;-><init>()V

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

    const-string p1, "can\'t parse magic %x in StarsTransaction"

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
        -0x5c6026b6 -> :sswitch_a
        -0x55ff3768 -> :sswitch_9
        -0x338f864e -> :sswitch_8
        -0x132af6dc -> :sswitch_7
        -0x118add2b -> :sswitch_6
        0xa9ee4c2 -> :sswitch_5
        0x13659eb0 -> :sswitch_4
        0x2db5418f -> :sswitch_3
        0x35d4f276 -> :sswitch_2
        0x433aeb2b -> :sswitch_1
        0x64dfc926 -> :sswitch_0
    .end sparse-switch
.end method
