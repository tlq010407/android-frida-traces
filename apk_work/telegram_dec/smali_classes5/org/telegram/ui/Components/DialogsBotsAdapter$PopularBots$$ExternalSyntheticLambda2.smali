.class public final synthetic Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iput-object p3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;

    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/MessagesStorage;

    iget-object v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->$r8$lambda$1g-_w1JOQo39YjABdFsn--ZYrDw(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V

    return-void
.end method
