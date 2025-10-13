.class public abstract Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChannelParticipant"
.end annotation


# instance fields
.field public admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field public admin_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

.field public banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public banned_rights_layer92:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;

.field public can_edit:Z

.field public date:I

.field public flags:I

.field public inviter_id:J

.field public kicked_by:J

.field public left:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public promoted_by:J

.field public rank:Ljava/lang/String;

.field public self:Z

.field public subscription_until_date:I

.field public user_id:J

.field public via_invite:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer103;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer103;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer131;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;-><init>()V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer131;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer185;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer185;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer133;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer133;-><init>()V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer92;-><init>()V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer125;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned_layer125;-><init>()V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantLeft;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantLeft;-><init>()V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant_layer131;-><init>()V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer103;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer103;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer131;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantLeft_layer125;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantLeft_layer125;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant_layer185;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant_layer185;-><init>()V

    goto :goto_0

    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer92;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin_layer92;-><init>()V

    goto :goto_0

    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer131;-><init>()V

    goto :goto_0

    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor_layer67;-><init>()V

    goto :goto_0

    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator_layer67;-><init>()V

    goto :goto_0

    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked_layer67;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantKicked_layer67;-><init>()V

    goto :goto_0

    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer118;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer118;-><init>()V

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

    const-string p1, "can\'t parse magic %x in ChannelParticipant"

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

    :sswitch_data_0
    .sparse-switch
        -0x7f72ea5c -> :sswitch_17
        -0x733a1966 -> :sswitch_16
        -0x6efa8011 -> :sswitch_15
        -0x67e6d29f -> :sswitch_14
        -0x5cd76593 -> :sswitch_13
        -0x57d05768 -> :sswitch_12
        -0x3ff3f840 -> :sswitch_11
        -0x3c398695 -> :sswitch_10
        -0x34c689e7 -> :sswitch_f
        -0x33414451 -> :sswitch_e
        -0x1c1d1e07 -> :sswitch_d
        0x15ebac1d -> :sswitch_c
        0x1b03f006 -> :sswitch_b
        0x1c0facaf -> :sswitch_a
        0x222c1886 -> :sswitch_9
        0x28a8bc67 -> :sswitch_8
        0x2fe601d3 -> :sswitch_7
        0x34c3bb53 -> :sswitch_6
        0x35a8bfa7 -> :sswitch_5
        0x447dca4b -> :sswitch_4
        0x4f607bef -> :sswitch_3
        0x50a1dfd6 -> :sswitch_2
        0x5daa6e23 -> :sswitch_1
        0x6df8014e -> :sswitch_0
    .end sparse-switch
.end method
