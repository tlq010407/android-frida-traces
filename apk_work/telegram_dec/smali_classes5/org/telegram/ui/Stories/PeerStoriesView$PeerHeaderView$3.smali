.class Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->setSubtitle(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView$3;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;->access$8300(Lorg/telegram/ui/Stories/PeerStoriesView$PeerHeaderView;)[Landroid/widget/TextView;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
