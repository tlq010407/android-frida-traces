.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_sendEncryptedService"
.end annotation


# instance fields
.field public data:Lorg/telegram/tgnet/NativeByteBuffer;

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

.field public random_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SentEncryptedMessage;

    move-result-object p1

    return-object p1
.end method

.method public freeResources()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x32d439a4

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedChat;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->random_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedService;->data:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteBuffer(Lorg/telegram/tgnet/NativeByteBuffer;)V

    return-void
.end method
