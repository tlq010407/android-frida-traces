.class Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;->this$3:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;->this$3:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->resetAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;->this$3:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChange:Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1$1;->this$3:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1$1;->this$2:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;->this$1:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getTransitionParams()Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->animateChangeProgress:F

    return-void
.end method
