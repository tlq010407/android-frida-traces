.class public Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public flags:I

.field public muted:Z

.field public participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public presentation_paused:Z

.field public raise_hand:Z

.field public video_paused:Z

.field public video_stopped:Z

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5ad8c541

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->muted:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->volume:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->raise_hand:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->video_stopped:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->video_paused:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->presentation_paused:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    :cond_5
    return-void
.end method
