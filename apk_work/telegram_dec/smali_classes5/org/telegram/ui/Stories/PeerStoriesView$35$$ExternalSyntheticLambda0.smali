.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput-boolean p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$3:Z

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->$r8$lambda$3sKn3_5oIRv1RagSdW4hOjfa2l0(Lorg/telegram/ui/Stories/PeerStoriesView$35;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method
