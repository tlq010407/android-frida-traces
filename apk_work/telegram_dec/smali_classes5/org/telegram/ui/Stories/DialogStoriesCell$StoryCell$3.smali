.class Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$3;->this$1:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell$3;->this$1:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceAnimateProgressToSegments:Z

    return-void
.end method
