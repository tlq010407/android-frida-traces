.class Lorg/telegram/ui/MessageSendPreview$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MessageSendPreview;->animateOpenTo(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MessageSendPreview;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$animateOptions:Z

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/MessageSendPreview;ZZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iput-boolean p2, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    iput-boolean p3, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$animateOptions:Z

    iput-object p4, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    iget-boolean v0, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$002(Lorg/telegram/ui/MessageSendPreview;F)F

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$1302(Lorg/telegram/ui/MessageSendPreview;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$2202(Lorg/telegram/ui/MessageSendPreview;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$4500(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v3}, Lorg/telegram/ui/MessageSendPreview;->access$000(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$1102(Lorg/telegram/ui/MessageSendPreview;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$4602(Lorg/telegram/ui/MessageSendPreview;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1, v0}, Lorg/telegram/ui/MessageSendPreview;->access$2402(Lorg/telegram/ui/MessageSendPreview;Z)Z

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$900(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$2500(Lorg/telegram/ui/MessageSendPreview;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$900(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$2300(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$animateOptions:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$3200(Lorg/telegram/ui/MessageSendPreview;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$3200(Lorg/telegram/ui/MessageSendPreview;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$000(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1400(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1400(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {v0}, Lorg/telegram/ui/MessageSendPreview;->access$000(Lorg/telegram/ui/MessageSendPreview;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$3000(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$2900(Lorg/telegram/ui/MessageSendPreview;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$after:Ljava/lang/Runnable;

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$1500(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$after:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$open:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->this$0:Lorg/telegram/ui/MessageSendPreview;

    invoke-static {p1}, Lorg/telegram/ui/MessageSendPreview;->access$800(Lorg/telegram/ui/MessageSendPreview;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/MessageSendPreview$17;->val$after:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-void
.end method
