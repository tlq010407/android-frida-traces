.class public final synthetic Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda5;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->$r8$lambda$HDn8zH2ZGlNEavHKeI0RsFcTxF8(Lorg/telegram/ui/Stories/StoriesStorage;Ljava/util/ArrayList;)V

    return-void
.end method
