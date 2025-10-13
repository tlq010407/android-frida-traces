.class Lorg/telegram/messenger/FactCheckController$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FactCheckController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final dialogId:J

.field public final hash:J

.field public final messageId:I


# direct methods
.method private constructor <init>(JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/FactCheckController$Key;->dialogId:J

    iput p3, p0, Lorg/telegram/messenger/FactCheckController$Key;->messageId:I

    iput-wide p4, p0, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    return-void
.end method

.method public static of(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/FactCheckController$Key;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/FactCheckController$Key;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->hash:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/FactCheckController$Key;-><init>(JIJ)V

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/FactCheckController$Key;->hash:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/FactCheckController$Key$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method
