.class Lorg/telegram/ui/Components/SubstringLayoutAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SubstringLayoutAnimator;->create(Landroid/text/StaticLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SubstringLayoutAnimator;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SubstringLayoutAnimator;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator$1;->this$0:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/SubstringLayoutAnimator$1;->this$0:Lorg/telegram/ui/Components/SubstringLayoutAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/SubstringLayoutAnimator;->animateTextChange:Z

    return-void
.end method
