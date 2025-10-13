.class public abstract Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public bot_canceled:Z

.field public can_refulfill:Z

.field public canceled:Z

.field public chat_invite_hash:Ljava/lang/String;

.field public flags:I

.field public id:Ljava/lang/String;

.field public invoice_slug:Ljava/lang/String;

.field public missing_balance:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public photo:Lorg/telegram/tgnet/TLRPC$WebDocument;

.field public pricing:Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscriptionPricing;

.field public title:Ljava/lang/String;

.field public until_date:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsSubscription;
    .locals 1

    const v0, -0x2f8c0e1a

    if-eq p1, v0, :cond_2

    const v0, 0x2e6eab1a

    if-eq p1, v0, :cond_1

    const v0, 0x538ecf18

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription_layer193;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription_layer193;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_starsSubscription_old;-><init>()V

    :goto_0
    if-nez v0, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
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

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_5
    return-object v0
.end method
