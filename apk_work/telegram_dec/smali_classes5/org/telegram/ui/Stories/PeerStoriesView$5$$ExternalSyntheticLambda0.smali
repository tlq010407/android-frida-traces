.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$5;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

.field public final synthetic f$2:Lorg/telegram/ui/Stories/StoryViewer;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$5;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$5;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Stories/StoryCaptionView$Reply;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$5$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$5;->$r8$lambda$P3x5Z2n05biozLfS5wynfZQqmQI(Lorg/telegram/ui/Stories/PeerStoriesView$5;Lorg/telegram/ui/Stories/StoryCaptionView$Reply;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method
