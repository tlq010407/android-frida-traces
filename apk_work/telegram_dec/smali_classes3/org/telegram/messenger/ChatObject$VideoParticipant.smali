.class public Lorg/telegram/messenger/ChatObject$VideoParticipant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ChatObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoParticipant"
.end annotation


# instance fields
.field public aspectRatio:F

.field public aspectRatioFromHeight:I

.field public aspectRatioFromWidth:I

.field public hasSame:Z

.field public participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field public presentation:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput-boolean p2, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iput-boolean p3, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->hasSame:Z

    return-void
.end method

.method private setAspectRatio(FLorg/telegram/messenger/ChatObject$Call;)V
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatio:F

    sget-boolean p1, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    if-nez p1, :cond_0

    iget-object p1, p2, Lorg/telegram/messenger/ChatObject$Call;->visibleVideoParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->updateVisibleParticipants()V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;

    iget-boolean v2, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->presentation:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$VideoParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public setAspectRatio(IILorg/telegram/messenger/ChatObject$Call;)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatioFromWidth:I

    iput p2, p0, Lorg/telegram/messenger/ChatObject$VideoParticipant;->aspectRatioFromHeight:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1, p3}, Lorg/telegram/messenger/ChatObject$VideoParticipant;->setAspectRatio(FLorg/telegram/messenger/ChatObject$Call;)V

    return-void
.end method
