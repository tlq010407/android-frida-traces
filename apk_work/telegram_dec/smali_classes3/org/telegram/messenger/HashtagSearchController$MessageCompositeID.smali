.class final Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HashtagSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageCompositeID"
.end annotation


# instance fields
.field final dialog_id:J

.field final id:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    iput p3, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    return-void
.end method

.method constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    .line 0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;

    iget-wide v2, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    iget-wide v4, p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    iget p1, p1, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->dialog_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/HashtagSearchController$MessageCompositeID;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
