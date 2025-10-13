.class public abstract Lorg/telegram/tgnet/TLRPC$EmojiStatus;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EmojiStatus"
.end annotation


# instance fields
.field public until:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EmojiStatus;
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    goto :goto_0

    :sswitch_5
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus_layer197;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus_layer197;-><init>()V

    :goto_0
    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in EmojiStatus"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_2
    instance-of p0, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;

    if-eqz p0, :cond_3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;

    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    iget-wide p1, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;->document_id:J

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    iget p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->flags:I

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil_layer197;->until:I

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$EmojiStatus;->until:I

    move-object v1, p0

    :cond_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6d649e63 -> :sswitch_5
        -0x1800f976 -> :sswitch_4
        -0x5cf5739 -> :sswitch_3
        0x7141dbf -> :sswitch_2
        0x2de11aae -> :sswitch_1
        0x7184603b -> :sswitch_0
    .end sparse-switch
.end method
