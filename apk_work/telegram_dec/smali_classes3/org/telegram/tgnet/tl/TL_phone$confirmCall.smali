.class public Lorg/telegram/tgnet/tl/TL_phone$confirmCall;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public g_a:[B

.field public key_fingerprint:J

.field public peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

.field public protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x2efe1722

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->g_a:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->key_fingerprint:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
