.class public final synthetic Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;->f$1:Z

    return-void
.end method


# virtual methods
.method public final loadNext(Z)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Stories/DialogStoriesCell;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda13;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->$r8$lambda$x0us1vaudtfA-_a2EN8Y0lqrdM8(Lorg/telegram/ui/Stories/DialogStoriesCell;ZZ)V

    return-void
.end method
