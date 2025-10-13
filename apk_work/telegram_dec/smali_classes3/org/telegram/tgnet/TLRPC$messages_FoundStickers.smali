.class public abstract Lorg/telegram/tgnet/TLRPC$messages_FoundStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_FoundStickers"
.end annotation


# instance fields
.field public flags:I

.field public next_offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_FoundStickers;
    .locals 1

    const v0, -0x7d361d70

    if-eq p1, v0, :cond_2

    const v0, 0x6010c534

    if-eq p1, v0, :cond_1

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

    const-string p1, "can\'t parse magic %x in messages_FoundStickers"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickersNotModified;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickersNotModified;-><init>()V

    :goto_0
    invoke-static {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC;->deserialize(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;Z)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$messages_FoundStickers;

    return-object p0

    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickers;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_foundStickers;-><init>()V

    goto :goto_0
.end method
