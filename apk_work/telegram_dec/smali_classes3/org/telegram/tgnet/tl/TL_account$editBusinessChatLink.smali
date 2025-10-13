.class public Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public link:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

.field public slug:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessChatLink;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x73cbef51

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$editBusinessChatLink;->link:Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessChatLink;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
