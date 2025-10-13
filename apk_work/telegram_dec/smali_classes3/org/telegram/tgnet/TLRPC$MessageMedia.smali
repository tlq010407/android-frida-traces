.class public abstract Lorg/telegram/tgnet/TLRPC$MessageMedia;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageMedia"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public alt_documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public attachPath:Ljava/lang/String;

.field public audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

.field public bytes:[B

.field public captionLegacy:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public extended_media:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;",
            ">;"
        }
    .end annotation
.end field

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public force_large_media:Z

.field public force_small_media:Z

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public heading:I

.field public id:I

.field public last_name:Ljava/lang/String;

.field public manual:Z

.field public nopremium:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public period:I

.field public phone_number:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public provider:Ljava/lang/String;

.field public proximity_notification_radius:I

.field public receipt_msg_id:I

.field public round:Z

.field public safe:Z

.field public shipping_address_requested:Z

.field public spoiler:Z

.field public stars_amount:J

.field public start_param:Ljava/lang/String;

.field public storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public test:Z

.field public title:Ljava/lang/String;

.field public total_amount:J

.field public ttl_seconds:I

.field public user_id:J

.field public vcard:Ljava/lang/String;

.field public venue_id:Ljava/lang/String;

.field public venue_type:Ljava/lang/String;

.field public via_mention:Z

.field public video:Z

.field public video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

.field public video_timestamp:I

.field public video_unused:Lorg/telegram/tgnet/TLRPC$Video;

.field public voice:Z

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_0

    :sswitch_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer74;-><init>()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive_layer119;-><init>()V

    goto/16 :goto_0

    :sswitch_2
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue_layer71;-><init>()V

    goto/16 :goto_0

    :sswitch_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    goto/16 :goto_0

    :sswitch_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    goto/16 :goto_0

    :sswitch_5
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory;-><init>()V

    goto/16 :goto_0

    :sswitch_6
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice_layer111;-><init>()V

    goto/16 :goto_0

    :sswitch_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer81;-><init>()V

    goto/16 :goto_0

    :sswitch_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_layer45;-><init>()V

    goto/16 :goto_0

    :sswitch_9
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer167;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer167;-><init>()V

    goto/16 :goto_0

    :sswitch_a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    goto/16 :goto_0

    :sswitch_b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    goto/16 :goto_0

    :sswitch_c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer187;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer187;-><init>()V

    goto/16 :goto_0

    :sswitch_d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;-><init>()V

    goto/16 :goto_0

    :sswitch_e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;-><init>()V

    goto/16 :goto_0

    :sswitch_f
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    goto/16 :goto_0

    :sswitch_10
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer68;-><init>()V

    goto/16 :goto_0

    :sswitch_11
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_old;-><init>()V

    goto/16 :goto_0

    :sswitch_12
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    goto/16 :goto_0

    :sswitch_13
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported_old;-><init>()V

    goto/16 :goto_0

    :sswitch_14
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    goto/16 :goto_0

    :sswitch_15
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;-><init>()V

    goto/16 :goto_0

    :sswitch_16
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer68;-><init>()V

    goto/16 :goto_0

    :sswitch_17
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    goto/16 :goto_0

    :sswitch_18
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197;-><init>()V

    goto/16 :goto_0

    :sswitch_19
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197_2;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer197_2;-><init>()V

    goto/16 :goto_0

    :sswitch_1a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer186;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway_layer186;-><init>()V

    goto/16 :goto_0

    :sswitch_1b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;-><init>()V

    goto/16 :goto_0

    :sswitch_1c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact_layer131;-><init>()V

    goto/16 :goto_0

    :sswitch_1d
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory_layer162;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaStory_layer162;-><init>()V

    goto :goto_0

    :sswitch_1e
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_old;-><init>()V

    goto :goto_0

    :sswitch_1f
    new-instance v2, Lorg/telegram/ui/Stories/MessageMediaStoryFull_old;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/MessageMediaStoryFull_old;-><init>()V

    goto :goto_0

    :sswitch_20
    new-instance v2, Lorg/telegram/ui/Stories/MessageMediaStoryFull;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/MessageMediaStoryFull;-><init>()V

    goto :goto_0

    :sswitch_21
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaAudio_layer45;-><init>()V

    goto :goto_0

    :sswitch_22
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults_layer186;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults_layer186;-><init>()V

    goto :goto_0

    :sswitch_23
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    goto :goto_0

    :sswitch_24
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto_layer74;-><init>()V

    goto :goto_0

    :sswitch_25
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;-><init>()V

    goto :goto_0

    :sswitch_26
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;-><init>()V

    goto :goto_0

    :sswitch_27
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage_layer165;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage_layer165;-><init>()V

    goto :goto_0

    :sswitch_28
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideo_old;-><init>()V

    goto :goto_0

    :sswitch_29
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;-><init>()V

    goto :goto_0

    :sswitch_2a
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer159;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument_layer159;-><init>()V

    goto :goto_0

    :sswitch_2b
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;-><init>()V

    goto :goto_0

    :sswitch_2c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice_layer145;-><init>()V

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

    const-string p1, "can\'t parse magic %x in MessageMedia"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v2, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    const/4 p1, 0x3

    if-eqz p0, :cond_5

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_videoEncrypted;

    if-eqz p2, :cond_2

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Video;->key:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Video;->iv:[B

    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_2

    :cond_2
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_2
    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array p2, v0, [B

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_3
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const-string v0, "video/mp4"

    goto :goto_3

    :goto_4
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    int-to-long v0, v0

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_unused:Lorg/telegram/tgnet/TLRPC$Video;

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    int-to-double v0, p2

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p1, :cond_4

    goto/16 :goto_9

    :cond_4
    :goto_5
    move-object v2, p0

    goto/16 :goto_a

    :cond_5
    iget-object p0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    if-eqz p0, :cond_8

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_audioEncrypted;

    if-eqz p2, :cond_6

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Audio;->key:[B

    iput-object v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Audio;->iv:[B

    iput-object v3, p2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    goto :goto_6

    :cond_6
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_6
    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-array p2, v0, [B

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Audio;->id:J

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Audio;->access_hash:J

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iget v0, p2, Lorg/telegram/tgnet/TLRPC$Audio;->date:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Audio;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_7

    :goto_7
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const-string v0, "audio/ogg"

    goto :goto_7

    :goto_8
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->size:I

    int-to-long v3, p2

    iput-wide v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    const-string p2, "s"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->dc_id:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->audio_unused:Lorg/telegram/tgnet/TLRPC$Audio;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Audio;->duration:I

    int-to-double v2, p2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    iget-object p2, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    if-nez p1, :cond_4

    :goto_9
    const-string p1, ""

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->captionLegacy:Ljava/lang/String;

    goto/16 :goto_5

    :cond_8
    :goto_a
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7baaecb9 -> :sswitch_2c
        -0x75ac4fec -> :sswitch_2b
        -0x634f8f29 -> :sswitch_2a
        -0x607b0b62 -> :sswitch_29
        -0x5d2dbd70 -> :sswitch_28
        -0x5cd22a00 -> :sswitch_27
        -0x577adb6f -> :sswitch_26
        -0x55f8c415 -> :sswitch_25
        -0x4addc4f1 -> :sswitch_24
        -0x46bf399a -> :sswitch_23
        -0x3966ef98 -> :sswitch_22
        -0x39497d00 -> :sswitch_21
        -0x386511e3 -> :sswitch_20
        -0x386511e1 -> :sswitch_1f
        -0x373ba5d6 -> :sswitch_1e
        -0x344df278 -> :sswitch_1d
        -0x340db6c0 -> :sswitch_1c
        -0x3155c15f -> :sswitch_1b
        -0x25527a50 -> :sswitch_1a
        -0x244209ec -> :sswitch_19
        -0x22a8f42b -> :sswitch_18
        -0x220ef3c5 -> :sswitch_17
        -0xc1fd158 -> :sswitch_16
        -0x95ab72d -> :sswitch_15
        -0x24e6ff8 -> :sswitch_14
        0x29632a36 -> :sswitch_13
        0x2ec0533f -> :sswitch_12
        0x2fda2204 -> :sswitch_11
        0x3d8ce53d -> :sswitch_10
        0x3ded6320 -> :sswitch_f
        0x3f7ee58b -> :sswitch_e
        0x4bd6e798 -> :sswitch_d
        0x4cf4d72d -> :sswitch_c
        0x52d8ccd9 -> :sswitch_b
        0x56e0d474 -> :sswitch_a
        0x58260664 -> :sswitch_9
        0x5bcf1675 -> :sswitch_8
        0x5e7d2f39 -> :sswitch_7
        0x638fe46b -> :sswitch_6
        0x68cb6283 -> :sswitch_5
        0x695150d7 -> :sswitch_4
        0x70322949 -> :sswitch_3
        0x7912b71f -> :sswitch_2
        0x7c3c2609 -> :sswitch_1
        0x7c4414d3 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->isStoryQualityFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->alt_documents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method
