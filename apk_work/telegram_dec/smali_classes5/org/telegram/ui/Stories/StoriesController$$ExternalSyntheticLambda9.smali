.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Stories/StoriesController;

    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->destroyStoryList(Lorg/telegram/ui/Stories/StoriesController$StoriesList;)V

    return-void
.end method
