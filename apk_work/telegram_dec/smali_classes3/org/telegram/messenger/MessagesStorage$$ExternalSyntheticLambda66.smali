.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$1:J

    iput-wide p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$2:J

    iput-object p6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$3:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$1:J

    iget-wide v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$2:J

    iget-object v5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$3:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda66;->f$4:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$rKHGaSyj8-PY7NTc1-8dK9b1zHA(Lorg/telegram/messenger/MessagesStorage;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
