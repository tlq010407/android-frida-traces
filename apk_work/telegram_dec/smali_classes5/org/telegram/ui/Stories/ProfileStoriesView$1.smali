.class Lorg/telegram/ui/Stories/ProfileStoriesView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

.field final synthetic val$vibrated:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->val$vibrated:[Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->val$vibrated:[Z

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$100(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->access$202(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$1;->this$0:Lorg/telegram/ui/Stories/ProfileStoriesView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
