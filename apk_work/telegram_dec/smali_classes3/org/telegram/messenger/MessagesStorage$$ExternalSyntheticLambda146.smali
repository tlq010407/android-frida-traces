.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;II[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$1:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$1:I

    iget v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda146;->f$3:[B

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$-J5CjT7tz5SzpQ2N-33lZhLRulA(Lorg/telegram/messenger/MessagesStorage;II[B)V

    return-void
.end method
