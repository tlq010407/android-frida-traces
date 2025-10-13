.class Lorg/telegram/ui/ChatActivity$41$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$41;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$41;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$41;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity$41;->access$27402(Lorg/telegram/ui/ChatActivity$41;I)I

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$41;->access$27500(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$41;->access$27600(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$41;->access$28000(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$41;->access$27700(Lorg/telegram/ui/ChatActivity$41;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity$41;->access$27800(Lorg/telegram/ui/ChatActivity$41;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity$41;->access$27900(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$41;->access$28100(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity$41;->access$28300(Lorg/telegram/ui/ChatActivity$41;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity$41;->access$28200(Lorg/telegram/ui/ChatActivity$41;)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$41$1;->this$1:Lorg/telegram/ui/ChatActivity$41;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$41;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$27302(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
