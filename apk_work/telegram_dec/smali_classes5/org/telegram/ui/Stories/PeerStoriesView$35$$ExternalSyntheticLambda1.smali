.class public final synthetic Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$35;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/PeerStoriesView$35;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$35$$ExternalSyntheticLambda1;->f$3:Landroid/view/View;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$35;->$r8$lambda$nwOTA3WAxz8vW4S6miGKYaOsubI(Lorg/telegram/ui/Stories/PeerStoriesView$35;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Landroid/view/View;Ljava/lang/Long;)V

    return-void
.end method
