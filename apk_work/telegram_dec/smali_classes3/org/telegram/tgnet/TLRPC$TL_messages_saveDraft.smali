.class public Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_saveDraft"
.end annotation


# instance fields
.field public effect:J

.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public invert_media:Z

.field public media:Lorg/telegram/tgnet/TLRPC$InputMedia;

.field public message:Ljava/lang/String;

.field public no_webpage:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

.field public suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 7

    const v0, 0x54ae308e

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->no_webpage:Z

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    invoke-static {v0, v4, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v5, 0x10

    invoke-static {v0, v5, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->invert_media:Z

    const/16 v6, 0x40

    invoke-static {v0, v6, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/16 v1, 0x100

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    invoke-static {v0, v5}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->message:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->effect:J

    invoke-interface {p1, v2, v3}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveDraft;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_7
    return-void
.end method
