.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Message;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$1:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda120;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$A4IgGfkJqKTN3jF97Duads7mJbk(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLRPC$Message;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
