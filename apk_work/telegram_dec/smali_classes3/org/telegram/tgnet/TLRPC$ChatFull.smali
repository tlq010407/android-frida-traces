.class public abstract Lorg/telegram/tgnet/TLRPC$ChatFull;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChatFull"
.end annotation


# instance fields
.field public about:Ljava/lang/String;

.field public admins_count:I

.field public antispam:Z

.field public available_min_id:I

.field public available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field public available_reactions_legacy:Ljava/util/ArrayList;

.field public banned_count:I

.field public blocked:Z

.field public boosts_applied:I

.field public boosts_unrestrict:I

.field public bot_info:Ljava/util/ArrayList;

.field public bot_verification:Lorg/telegram/tgnet/tl/TL_bots$botVerification;

.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public call_msg_id:I

.field public can_delete_channel:Z

.field public can_set_location:Z

.field public can_set_stickers:Z

.field public can_set_username:Z

.field public can_view_participants:Z

.field public can_view_revenue:Z

.field public can_view_stars_revenue:Z

.field public can_view_stats:Z

.field public chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

.field public emojiset:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field public flags:I

.field public flags2:I

.field public folder_id:I

.field public groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

.field public has_scheduled:Z

.field public hidden_prehistory:Z

.field public id:J

.field public inviterId:J

.field public invitesCount:I

.field public kicked_count:I

.field public linked_chat_id:J

.field public location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

.field public migrated_from_chat_id:J

.field public migrated_from_max_id:I

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public online_count:I

.field public paid_media_allowed:Z

.field public paid_messages_available:Z

.field public paid_reactions_available:Z

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public participants_count:I

.field public participants_hidden:Z

.field public pending_suggestions:Ljava/util/ArrayList;

.field public pinned_msg_id:I

.field public pts:I

.field public reactions_limit:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public recent_requesters:Ljava/util/ArrayList;

.field public requests_pending:I

.field public restricted_sponsored:Z

.field public send_paid_messages_stars:J

.field public slowmode_next_send_date:I

.field public slowmode_seconds:I

.field public stargifts_available:Z

.field public stargifts_count:I

.field public stats_dc:I

.field public stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public stories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field public stories_pinned_available:Z

.field public theme_emoticon:Ljava/lang/String;

.field public translations_disabled:Z

.field public ttl_period:I

.field public unread_count:I

.field public unread_important_count:I

.field public view_forum_as_messages:Z

.field public wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->bot_info:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->pending_suggestions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->recent_requesters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer123;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer123;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer72;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer72;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer167;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer167;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer176;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer176;-><init>()V

    goto/16 :goto_0

    :sswitch_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer134;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer134;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer135;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer135;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer131;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer131;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer204;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer204;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer133;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer133;-><init>()V

    goto/16 :goto_0

    :sswitch_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer132;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer132;-><init>()V

    goto/16 :goto_0

    :sswitch_a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer135;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer135;-><init>()V

    goto/16 :goto_0

    :sswitch_b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer177;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer177;-><init>()V

    goto/16 :goto_0

    :sswitch_c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer132;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer132;-><init>()V

    goto/16 :goto_0

    :sswitch_d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer87;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer87;-><init>()V

    goto/16 :goto_0

    :sswitch_e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer110;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer110;-><init>()V

    goto/16 :goto_0

    :sswitch_f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull;-><init>()V

    goto/16 :goto_0

    :sswitch_10
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer124;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer124;-><init>()V

    goto/16 :goto_0

    :sswitch_11
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer98;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer98;-><init>()V

    goto/16 :goto_0

    :sswitch_12
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer98;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer98;-><init>()V

    goto/16 :goto_0

    :sswitch_13
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer121;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer121;-><init>()V

    goto/16 :goto_0

    :sswitch_14
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer71;-><init>()V

    goto/16 :goto_0

    :sswitch_15
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer103;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer103;-><init>()V

    goto/16 :goto_0

    :sswitch_16
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer173;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer173;-><init>()V

    goto/16 :goto_0

    :sswitch_17
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer122;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer122;-><init>()V

    goto/16 :goto_0

    :sswitch_18
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer99;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer99;-><init>()V

    goto/16 :goto_0

    :sswitch_19
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_old;-><init>()V

    goto/16 :goto_0

    :sswitch_1a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer123;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer123;-><init>()V

    goto/16 :goto_0

    :sswitch_1b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer162;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer162;-><init>()V

    goto/16 :goto_0

    :sswitch_1c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer121;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer121;-><init>()V

    goto/16 :goto_0

    :sswitch_1d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer124;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer124;-><init>()V

    goto/16 :goto_0

    :sswitch_1e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer122;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer122;-><init>()V

    goto/16 :goto_0

    :sswitch_1f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer92;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer92;-><init>()V

    goto :goto_0

    :sswitch_20
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer144;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer144;-><init>()V

    goto :goto_0

    :sswitch_21
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer133;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer133;-><init>()V

    goto :goto_0

    :sswitch_22
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer139;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer139;-><init>()V

    goto :goto_0

    :sswitch_23
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull;-><init>()V

    goto :goto_0

    :sswitch_24
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer144;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer144;-><init>()V

    goto :goto_0

    :sswitch_25
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer89;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer89;-><init>()V

    goto :goto_0

    :sswitch_26
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer177;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer177;-><init>()V

    goto :goto_0

    :sswitch_27
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer67;-><init>()V

    goto :goto_0

    :sswitch_28
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer195;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer195;-><init>()V

    goto :goto_0

    :sswitch_29
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer197;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer197;-><init>()V

    goto :goto_0

    :sswitch_2a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer48;-><init>()V

    goto :goto_0

    :sswitch_2b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer101;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer101;-><init>()V

    goto :goto_0

    :sswitch_2c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer52;-><init>()V

    goto :goto_0

    :sswitch_2d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer70;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelFull_layer70;-><init>()V

    goto :goto_0

    :sswitch_2e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer131;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_chatFull_layer131;-><init>()V

    :goto_0
    if-nez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in ChatFull"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    if-nez p0, :cond_4

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;-><init>()V

    :goto_2
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;-><init>()V

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions_legacy:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    :goto_3
    iput-object p0, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    goto :goto_4

    :cond_3
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;-><init>()V

    goto :goto_3

    :cond_4
    :goto_4
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75e1d67d -> :sswitch_2e
        -0x6a34a0a9 -> :sswitch_2d
        -0x68411a9e -> :sswitch_2c
        -0x677d1aea -> :sswitch_2b
        -0x61cbe221 -> :sswitch_2a
        -0x600c47a8 -> :sswitch_29
        -0x4454cb73 -> :sswitch_28
        -0x3c2aaed1 -> :sswitch_27
        -0x362ceec8 -> :sswitch_26
        -0x3449d770 -> :sswitch_25
        -0x2e711dda -> :sswitch_24
        -0x1f8bd622 -> :sswitch_23
        -0x1ec3c2e0 -> :sswitch_22
        -0x164d85e9 -> :sswitch_21
        -0x159759e7 -> :sswitch_20
        -0x122d586f -> :sswitch_1f
        -0x10c59533 -> :sswitch_1e
        -0xf93bfe8 -> :sswitch_1d
        -0xf1998d6 -> :sswitch_1c
        -0xdcaaaf9 -> :sswitch_1b
        -0xcb8b50a -> :sswitch_1a
        -0x54ce55d -> :sswitch_19
        0x3648977 -> :sswitch_18
        0xdc8c181 -> :sswitch_17
        0xf2bcb6f -> :sswitch_16
        0x10916653 -> :sswitch_15
        0x17f45fcf -> :sswitch_14
        0x1b7c9db3 -> :sswitch_13
        0x1c87a71a -> :sswitch_12
        0x22a235da -> :sswitch_11
        0x2548c037 -> :sswitch_10
        0x2633421b -> :sswitch_f
        0x2d895c74 -> :sswitch_e
        0x2e02a614 -> :sswitch_d
        0x2f532f3c -> :sswitch_c
        0x44c054a7 -> :sswitch_b
        0x46a6ffb4 -> :sswitch_a
        0x49a0a5d9 -> :sswitch_9
        0x4dbdc099 -> :sswitch_8
        0x52d6806b -> :sswitch_7
        0x548c3f93 -> :sswitch_6
        0x56662e2e -> :sswitch_5
        0x59cff963 -> :sswitch_4
        0x680b773c -> :sswitch_3
        0x723027bd -> :sswitch_2
        0x76af5481 -> :sswitch_1
        0x7a7de4f7 -> :sswitch_0
    .end sparse-switch
.end method
