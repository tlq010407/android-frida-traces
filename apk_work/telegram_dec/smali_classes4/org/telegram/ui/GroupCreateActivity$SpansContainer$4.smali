.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeAllSpans(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

.field final synthetic val$spans:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->val$spans:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->val$spans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->val$spans:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->access$1500(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$202(Lorg/telegram/ui/GroupCreateActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->access$1102(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$800(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;->this$1:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object p1, p1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintVisible(ZZ)V

    :cond_1
    return-void
.end method
