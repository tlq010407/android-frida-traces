.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageActionSuggestedPostApproval"
.end annotation


# instance fields
.field public balance_too_low:Z

.field public price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

.field public reject_comment:Ljava/lang/String;

.field public rejected:Z

.field public schedule_date:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->rejected:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->reject_comment:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->schedule_date:I

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 5

    const v0, -0x1185ea6a

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->rejected:Z

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->balance_too_low:Z

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->reject_comment:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x4

    invoke-static {v0, v4, v1}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLRPC;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-static {v0, v4}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->reject_comment:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->schedule_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLRPC;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestedPostApproval;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_4
    return-void
.end method
