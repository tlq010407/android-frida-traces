.class public abstract Lorg/telegram/tgnet/TLRPC$InputChannel;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputChannel"
.end annotation


# instance fields
.field public access_hash:J

.field public channel_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputChannel;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelFromMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelFromMessage;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelFromMessage_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelFromMessage_layer131;-><init>()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputChannel_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel_layer131;-><init>()V

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

    const-string p1, "can\'t parse magic %x in InputChannel"

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
        -0x50148ed2 -> :sswitch_4
        -0x1173e17a -> :sswitch_3
        -0xca513d8 -> :sswitch_2
        0x2a286531 -> :sswitch_1
        0x5b934f9d -> :sswitch_0
    .end sparse-switch
.end method
