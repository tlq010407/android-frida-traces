.class Lorg/telegram/ui/ChatActivity$119$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$119;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$119;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$119;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity$119;->val$animateName:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$119;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity$119;->val$animateText:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$119;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity$119;->val$animateButton:Z

    if-eqz v0, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$119;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$119;->val$animateImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$119$1;->this$1:Lorg/telegram/ui/ChatActivity$119;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$119;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-void
.end method
