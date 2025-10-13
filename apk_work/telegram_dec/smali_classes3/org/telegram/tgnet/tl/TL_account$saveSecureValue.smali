.class public Lorg/telegram/tgnet/tl/TL_account$saveSecureValue;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public secure_secret_id:J

.field public value:Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_secureValue;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_secureValue;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x76601ce3

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$saveSecureValue;->value:Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputSecureValue;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_account$saveSecureValue;->secure_secret_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
