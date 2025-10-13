.class public abstract Lorg/telegram/tgnet/TLRPC$Dialog;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Dialog"
.end annotation


# instance fields
.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public flags:I

.field public folder_id:I

.field public id:J

.field public isFolder:Z

.field public last_message_date:I

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public pinned:Z

.field public pinnedNum:I

.field public pts:I

.field public read_inbox_max_id:I

.field public read_outbox_max_id:I

.field public top_message:I

.field public ttl_period:I

.field public unread_count:I

.field public unread_mark:Z

.field public unread_mentions_count:I

.field public unread_reactions_count:I

.field public view_forum_as_messages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 2

    const/4 v0, 0x1

    const v1, -0x57122f0b

    if-eq p1, v1, :cond_2

    const v1, -0x2a75f73a

    if-eq p1, v1, :cond_1

    const v1, 0x71bd134c

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;-><init>()V

    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$Dialog;->isFolder:Z

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dialog_layer149;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dialog_layer149;-><init>()V

    :goto_0
    if-nez v1, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in Dialog"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V

    :cond_5
    return-object v1
.end method
