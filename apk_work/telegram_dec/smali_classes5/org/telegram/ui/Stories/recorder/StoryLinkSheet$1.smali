.class Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

.field final synthetic val$checkPaste:Ljava/lang/Runnable;

.field final synthetic val$def:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$def:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$checkPaste:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$checkPaste:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$000(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$100(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$def:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$002(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$200(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$200(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$200(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$002(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$102(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$300(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$300(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$000(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->this$0:Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$def:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_1

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$def:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr p4, p2

    if-lt v1, p4, :cond_1

    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet$1;->val$def:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p3, v0}, Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;->access$102(Lorg/telegram/ui/Stories/recorder/StoryLinkSheet;Z)Z

    return-void
.end method
