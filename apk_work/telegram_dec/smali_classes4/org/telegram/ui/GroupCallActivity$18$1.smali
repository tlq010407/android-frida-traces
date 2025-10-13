.class Lorg/telegram/ui/GroupCallActivity$18$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$18;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$18;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$18;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$18$1;->this$1:Lorg/telegram/ui/GroupCallActivity$18;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$18$1;->this$1:Lorg/telegram/ui/GroupCallActivity$18;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/GroupCallActivity$18;->currentButtonsAnimation:Landroid/animation/AnimatorSet;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$18$1;->this$1:Lorg/telegram/ui/GroupCallActivity$18;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$18$1;->this$1:Lorg/telegram/ui/GroupCallActivity$18;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
