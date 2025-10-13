.class Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreTextChange:Z

.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

.field private trimmedLength:I

.field final synthetic val$this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->val$this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->ignoreTextChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17100(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17200(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17300(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16802(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17400(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17500(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Z)V

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->ignoreTextChange:Z

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16800(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->trimmedLength:I

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17600(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->ignoreTextChange:Z

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->ignoreTextChange:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$16900(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;->access$17000(Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPhraseView$2;->trimmedLength:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
