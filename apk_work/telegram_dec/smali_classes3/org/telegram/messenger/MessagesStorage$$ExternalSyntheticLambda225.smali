.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZJIJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$2:J

    iput p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$3:I

    iput-wide p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$2:J

    iget v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$3:I

    iget-wide v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda225;->f$4:J

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$mhSkj4ZxDJ7YdpzGHvj98-P7lEU(Lorg/telegram/messenger/MessagesStorage;ZJIJ)V

    return-void
.end method
