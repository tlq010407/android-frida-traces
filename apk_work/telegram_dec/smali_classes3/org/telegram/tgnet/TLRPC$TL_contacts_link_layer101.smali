.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_link_layer101"
.end annotation


# instance fields
.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

.field public user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;
    .locals 1

    const v0, 0x3ace484c

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

    const-string p1, "can\'t parse magic %x in TL_contacts_link"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;-><init>()V

    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x3ace484c

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->my_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_link_layer101;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
