.class public final synthetic Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/FactCheckController$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/FactCheckController;->$r8$lambda$eRU3nxQjWPT8Oj30fqwMG3VVK3A(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
