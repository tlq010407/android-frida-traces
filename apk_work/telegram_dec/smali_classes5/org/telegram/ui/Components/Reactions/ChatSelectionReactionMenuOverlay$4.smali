.class Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->animateVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$100(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$102(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay$4;->this$0:Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;->access$002(Lorg/telegram/ui/Components/Reactions/ChatSelectionReactionMenuOverlay;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    return-void
.end method
