.class Lorg/telegram/ui/web/WebActionBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebActionBar;->showSearch(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/WebActionBar;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebActionBar;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iput-boolean p2, p0, Lorg/telegram/ui/web/WebActionBar$7;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-boolean v0, p1, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object v0, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-boolean v1, p0, Lorg/telegram/ui/web/WebActionBar$7;->val$show:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p1, Lorg/telegram/ui/web/WebActionBar;->searchingProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-boolean v0, p1, Lorg/telegram/ui/web/WebActionBar;->searching:Z

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$7;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget-object p1, p1, Lorg/telegram/ui/web/WebActionBar;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :goto_1
    return-void
.end method
