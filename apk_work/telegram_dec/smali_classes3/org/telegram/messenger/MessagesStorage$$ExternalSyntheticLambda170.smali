.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/MessagesController$DialogFilter;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda170;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$SoWCtxqYjD7w8xwSSQk1HiEz-r0(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/messenger/MessagesController$DialogFilter;ZZ)V

    return-void
.end method
