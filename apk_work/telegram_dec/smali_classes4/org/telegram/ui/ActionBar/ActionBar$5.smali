.class Lorg/telegram/ui/ActionBar/ActionBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$400(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->access$1000(Lorg/telegram/ui/ActionBar/ActionBar;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->access$1000(Lorg/telegram/ui/ActionBar/ActionBar;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->access$1000(Lorg/telegram/ui/ActionBar/ActionBar;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
