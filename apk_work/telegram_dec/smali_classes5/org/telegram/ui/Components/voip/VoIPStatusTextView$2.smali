.class Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

.field final synthetic val$in:Landroid/view/View;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$out:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$vqd9HtMAbV7fckPz2V1GVE1QDrc(Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iget-object v0, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v0, v1

    aput-object v2, v0, v3

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$out:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$in:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->val$onEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    const-string v0, "timer"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->showTimer(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iget-object v2, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    iget-object v2, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v1, v2, v1

    aget-object v0, v2, v0

    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;)V

    invoke-static {p1, v1, v0, v2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->access$000(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;->this$0:Lorg/telegram/ui/Components/voip/VoIPStatusTextView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    :cond_2
    return-void
.end method
