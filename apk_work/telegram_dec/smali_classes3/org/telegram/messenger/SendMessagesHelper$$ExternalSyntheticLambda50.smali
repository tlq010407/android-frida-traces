.class public final synthetic Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/SendMessagesHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/SendMessagesHelper;IZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iput p2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$0:Lorg/telegram/messenger/SendMessagesHelper;

    iget v1, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda50;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->$r8$lambda$nYOI6zIPWVE-hlZc88X2PUc3nN4(Lorg/telegram/messenger/SendMessagesHelper;IZLjava/lang/Runnable;)V

    return-void
.end method
