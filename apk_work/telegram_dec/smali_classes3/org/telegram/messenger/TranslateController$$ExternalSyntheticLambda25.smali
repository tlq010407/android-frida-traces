.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-wide p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$2:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-wide v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda25;->f$2:Lorg/telegram/messenger/TranslateController$PendingPollTranslation;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$JHFWnnrlU9gO-HydRlhHnMAtjRw(Lorg/telegram/messenger/TranslateController;JLorg/telegram/messenger/TranslateController$PendingPollTranslation;)V

    return-void
.end method
