.class public abstract Lorg/telegram/tgnet/tl/TL_stories$Boost;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public date:I

.field public expires:I

.field public flags:I

.field public gift:Z

.field public giveaway:Z

.field public giveaway_msg_id:I

.field public id:Ljava/lang/String;

.field public multiplier:I

.field public stars:J

.field public unclaimed:Z

.field public used_gift_slug:Ljava/lang/String;

.field public user_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$Boost;->user_id:J

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$Boost;
    .locals 1

    const v0, 0x2a1c8c71

    if-eq p1, v0, :cond_1

    const v0, 0x4b3e14d6    # 1.2457174E7f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_boost;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_boost_layer186;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_boost_layer186;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Boost"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_4
    return-object v0
.end method
