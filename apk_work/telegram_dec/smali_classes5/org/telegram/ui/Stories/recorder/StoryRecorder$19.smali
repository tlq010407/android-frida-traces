.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->animateContainerBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY2(F)V

    return-void
.end method
