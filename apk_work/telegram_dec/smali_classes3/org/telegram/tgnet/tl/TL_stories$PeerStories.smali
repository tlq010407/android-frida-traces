.class public abstract Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public checkedExpired:Z

.field public flags:I

.field public max_read_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public stories:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;
    .locals 1

    const v0, -0x79ee5e00

    if-eq p1, v0, :cond_1

    const v0, -0x65ca1667

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories_layer162;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_peerStories_layer162;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in PeerStories"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_4
    return-object v0
.end method
