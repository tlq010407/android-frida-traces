.class public final synthetic Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftsController$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/DraftsController;->$r8$lambda$6IXZXV8p4lXLYDofSjSWK6WcFX8(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/ui/Stories/recorder/DraftsController$StoryDraft;)V

    return-void
.end method
