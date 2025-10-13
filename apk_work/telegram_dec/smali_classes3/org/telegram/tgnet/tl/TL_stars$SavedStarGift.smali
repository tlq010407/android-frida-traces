.class public abstract Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public can_export_at:I

.field public can_resell_at:I

.field public can_transfer_at:I

.field public can_upgrade:Z

.field public convert_stars:J

.field public date:I

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public gift:Lorg/telegram/tgnet/tl/TL_stars$StarGift;

.field public message:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public msg_id:I

.field public name_hidden:Z

.field public pinned_to_top:Z

.field public refunded:Z

.field public saved_id:J

.field public transfer_stars:J

.field public unsaved:Z

.field public upgrade_stars:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 1

    const v0, -0x2025fb67

    if-eq p1, v0, :cond_1

    const v0, 0x6056dba5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift_layer202;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift_layer202;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$TL_savedStarGift;-><init>()V

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

    const-string p1, "can\'t parse magic %x in SavedStarGift"

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
