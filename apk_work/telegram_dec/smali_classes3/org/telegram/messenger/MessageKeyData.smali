.class public Lorg/telegram/messenger/MessageKeyData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aesIv:[B

.field public aesKey:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMessageKeyData([B[BZI)Lorg/telegram/messenger/MessageKeyData;
    .locals 8

    new-instance v0, Lorg/telegram/messenger/MessageKeyData;

    invoke-direct {v0}, Lorg/telegram/messenger/MessageKeyData;-><init>()V

    if-eqz p0, :cond_4

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x10

    if-eq p3, v3, :cond_3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p3, p1, v1, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/16 v3, 0x24

    invoke-virtual {p3, p0, p2, v3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object v5

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    add-int/lit8 p2, p2, 0x28

    invoke-virtual {p3, p0, p2, v3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3, p1, v1, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA256([B)[B

    move-result-object p0

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p1, v5, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, p0, v2, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/16 p2, 0x18

    invoke-virtual {p1, v5, p2, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p1, p0, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, v5, v2, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, p0, p2, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    goto/16 :goto_2

    :cond_3
    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    const/16 v3, 0x20

    invoke-virtual {p3, p0, p2, v3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v5

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    add-int/lit8 v6, p2, 0x20

    invoke-virtual {p3, p0, v6, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 v6, p2, 0x30

    invoke-virtual {p3, p0, v6, v4}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v6

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    add-int/lit8 v7, p2, 0x40

    invoke-virtual {p3, p0, v7, v3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v7

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p3, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p3}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p3, p1}, Lorg/telegram/tgnet/SerializedData;->writeBytes([B)V

    add-int/lit8 p2, p2, 0x60

    invoke-virtual {p3, p0, p2, v3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object p0

    invoke-virtual {p3}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p1, v5, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/16 p2, 0xc

    invoke-virtual {p1, v6, v2, p2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    const/4 p3, 0x4

    invoke-virtual {p1, v7, p3, p2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    new-instance p1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {p1}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    invoke-virtual {p1, v5, v2, p2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, v6, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, v7, v4, p3}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1, p0, v1, v2}, Lorg/telegram/tgnet/SerializedData;->writeBytes([BII)V

    invoke-virtual {p1}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    goto/16 :goto_1

    :goto_2
    return-object v0

    :cond_4
    :goto_3
    const/4 p0, 0x0

    iput-object p0, v0, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    iput-object p0, v0, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    return-object v0
.end method
