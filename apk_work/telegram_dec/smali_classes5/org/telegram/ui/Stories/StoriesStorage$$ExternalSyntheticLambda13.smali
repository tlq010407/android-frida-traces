.class public final synthetic Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesStorage;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Stories/StoriesStorage;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesStorage$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesStorage;->$r8$lambda$2q3trS93R5ZsuJpcM6-B6KcCFWQ(Lorg/telegram/ui/Stories/StoriesStorage;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V

    return-void
.end method
