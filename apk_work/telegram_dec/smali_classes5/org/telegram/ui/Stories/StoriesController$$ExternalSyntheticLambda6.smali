.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->$r8$lambda$wyrfhXC8Ry7C3KVXpSwUNUKooro(Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/tgnet/tl/TL_stories$TL_stories_allStories;)V

    return-void
.end method
