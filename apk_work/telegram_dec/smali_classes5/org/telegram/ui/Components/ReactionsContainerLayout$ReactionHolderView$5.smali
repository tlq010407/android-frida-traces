.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$2102(Lorg/telegram/ui/Components/ReactionsContainerLayout;I)I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->access$102(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$5;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
