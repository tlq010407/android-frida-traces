.class public abstract Lorg/telegram/tgnet/TLRPC$PeerSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerSettings"
.end annotation


# instance fields
.field public add_contact:Z

.field public autoarchived:Z

.field public block_contact:Z

.field public business_bot_can_reply:Z

.field public business_bot_id:J

.field public business_bot_manage_url:Ljava/lang/String;

.field public business_bot_paused:Z

.field public charge_paid_message_stars:J

.field public flags:I

.field public geo_distance:I

.field public invite_members:Z

.field public name_change_date:I

.field public need_contacts_exception:Z

.field public phone_country:Ljava/lang/String;

.field public photo_change_date:I

.field public registration_month:Ljava/lang/String;

.field public report_geo:Z

.field public report_spam:Z

.field public request_chat_broadcast:Z

.field public request_chat_date:I

.field public request_chat_title:Ljava/lang/String;

.field public share_contact:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PeerSettings;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199_3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199_3;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer199_2;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer176;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings_layer176;-><init>()V

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

    const-string p1, "can\'t parse magic %x in PeerSettings"

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
        -0x5ae7eef3 -> :sswitch_4
        -0x579c628e -> :sswitch_3
        -0x532993a2 -> :sswitch_2
        -0xb88be09 -> :sswitch_1
        0xd8c39ec -> :sswitch_0
    .end sparse-switch
.end method
