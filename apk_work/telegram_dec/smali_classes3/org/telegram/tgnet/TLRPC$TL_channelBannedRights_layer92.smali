.class public Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelBannedRights_layer92"
.end annotation


# instance fields
.field public embed_links:Z

.field public flags:I

.field public send_games:Z

.field public send_gifs:Z

.field public send_inline:Z

.field public send_media:Z

.field public send_messages:Z

.field public send_stickers:Z

.field public until_date:I

.field public view_messages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;
    .locals 1

    const v0, 0x58cf4249

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_channelBannedRights_layer92"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->view_messages:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_messages:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_media:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_stickers:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_gifs:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_games:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_inline:Z

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->embed_links:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->until_date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x58cf4249

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->view_messages:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_media:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_stickers:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_gifs:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_games:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->send_inline:Z

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x40

    goto :goto_6

    :cond_6
    and-int/lit8 v0, v0, -0x41

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->embed_links:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x80

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x81

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights_layer92;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
