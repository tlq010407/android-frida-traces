.class Lorg/telegram/ui/Stories/PeerStoriesView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->animateLikeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$oldLikeButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$14;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$14;->val$oldLikeButton:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$14;->val$oldLikeButton:Landroid/view/View;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    return-void
.end method
