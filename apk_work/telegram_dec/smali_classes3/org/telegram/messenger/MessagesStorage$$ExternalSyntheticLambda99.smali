.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$2:I

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$2:I

    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda99;->f$3:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$qoYDXpgYR-mh7dBndPV9FKdtAP4(Lorg/telegram/messenger/MessagesStorage;JIZ)V

    return-void
.end method
