.class public final synthetic Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/HashMap;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/bots/BotBiometry$$ExternalSyntheticLambda2;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/bots/BotBiometry;->$r8$lambda$BX8icqv4QTfhlOWuLIV7JSZ6DCc(ILjava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
