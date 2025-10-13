.class public abstract Lorg/telegram/tgnet/TLRPC$User;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "User"
.end annotation


# instance fields
.field public access_hash:J

.field public apply_min_photo:Z

.field public attach_menu_enabled:Z

.field public bot:Z

.field public bot_active_users:I

.field public bot_attach_menu:Z

.field public bot_business:Z

.field public bot_can_edit:Z

.field public bot_chat_history:Z

.field public bot_has_main_app:Z

.field public bot_info_version:I

.field public bot_inline_geo:Z

.field public bot_inline_placeholder:Ljava/lang/String;

.field public bot_menu_webview:Z

.field public bot_nochats:Z

.field public bot_verification_icon:J

.field public close_friend:Z

.field public color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

.field public contact:Z

.field public contact_require_premium:Z

.field public deleted:Z

.field public emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

.field public explicit_content:Z

.field public fake:Z

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public flags2:I

.field public id:J

.field public inactive:Z

.field public lang_code:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public min:Z

.field public mutual_contact:Z

.field public phone:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public premium:Z

.field public profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

.field public restricted:Z

.field public restriction_reason:Ljava/util/ArrayList;

.field public scam:Z

.field public self:Z

.field public send_paid_messages_stars:J

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public stories_hidden:Z

.field public stories_max_id:I

.field public stories_unavailable:Z

.field public support:Z

.field public username:Ljava/lang/String;

.field public usernames:Ljava/util/ArrayList;

.field public verified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old2;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer196_1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer196_1;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer147;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer147;-><init>()V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer196_2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer196_2;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer185;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer185;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer199;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer199;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer144;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer144;-><init>()V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer104;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer104;-><init>()V

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old;-><init>()V

    goto/16 :goto_0

    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_old;-><init>()V

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer184;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer184;-><init>()V

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userEmpty_layer131;-><init>()V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userSelf_old3;-><init>()V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userForeign_old2;-><init>()V

    goto :goto_0

    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    goto :goto_0

    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old;-><init>()V

    goto :goto_0

    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer166;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer166;-><init>()V

    goto :goto_0

    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V

    goto :goto_0

    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old2;-><init>()V

    goto :goto_0

    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userEmpty;-><init>()V

    goto :goto_0

    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;-><init>()V

    goto :goto_0

    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    goto :goto_0

    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_userDeleted_old;-><init>()V

    goto :goto_0

    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer165;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer165;-><init>()V

    goto :goto_0

    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer131;-><init>()V

    goto :goto_0

    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer159;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer159;-><init>()V

    goto :goto_0

    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer195;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_user_layer195;-><init>()V

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

    const-string p1, "can\'t parse magic %x in User"

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
        -0x7cceb036 -> :sswitch_1c
        -0x706839d8 -> :sswitch_1b
        -0x6c7ba73f -> :sswitch_1a
        -0x544a0ee0 -> :sswitch_19
        -0x4d652834 -> :sswitch_18
        -0x354ca1e8 -> :sswitch_17
        -0x2ef26866 -> :sswitch_16
        -0x2c43b486 -> :sswitch_15
        -0x29fe9286 -> :sswitch_14
        -0x26333b11 -> :sswitch_13
        -0x149fd0db -> :sswitch_12
        -0xd047ce7 -> :sswitch_11
        0x20b1422 -> :sswitch_10
        0x75cf7a8 -> :sswitch_f
        0x1c60e608 -> :sswitch_e
        0x200250ba -> :sswitch_d
        0x215c4438 -> :sswitch_c
        0x22e49072 -> :sswitch_b
        0x22e8ceb0 -> :sswitch_a
        0x2e13f4c3 -> :sswitch_9
        0x3ff6ecb0 -> :sswitch_8
        0x4b46c37e -> :sswitch_7
        0x4fe9cce0 -> :sswitch_6
        0x5214c89d -> :sswitch_5
        0x59476956 -> :sswitch_4
        0x5d99adee -> :sswitch_3
        0x685f5e21 -> :sswitch_2
        0x7007b451 -> :sswitch_1
        0x720535ec -> :sswitch_0
    .end sparse-switch
.end method
