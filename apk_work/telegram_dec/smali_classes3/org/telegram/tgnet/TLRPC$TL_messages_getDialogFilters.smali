.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getDialogFilters;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getDialogFilters"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1

    const v0, 0x1cb5c415

    if-ne p2, v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/tgnet/Vector;->TLDeserialize(Lorg/telegram/tgnet/InputSerializedData;IZLorg/telegram/tgnet/Vector$TLDeserializer;)Lorg/telegram/tgnet/Vector;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_dialogFilters;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x102b7377

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
