.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$2:J

    iput p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$2:J

    iget v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda77;->f$3:I

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$t5dkgXWLzT28LRyStvqmEejkUM4(Lorg/telegram/messenger/MessagesStorage;JJI)V

    return-void
.end method
