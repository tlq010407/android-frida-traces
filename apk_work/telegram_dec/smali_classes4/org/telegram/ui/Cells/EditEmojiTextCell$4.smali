.class Lorg/telegram/ui/Cells/EditEmojiTextCell$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/EditEmojiTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextCaption;

.field final synthetic val$maxLength:I

.field final synthetic val$multiline:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;ILorg/telegram/ui/Components/EditTextCaption;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iput p2, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$maxLength:I

    iput-object p3, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    iput-boolean p4, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$multiline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$200(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$maxLength:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$maxLength:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$202(Lorg/telegram/ui/Cells/EditEmojiTextCell;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$maxLength:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {v0, v2}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$202(Lorg/telegram/ui/Cells/EditEmojiTextCell;Z)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$multiline:Z

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_3

    iget v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->val$maxLength:I

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$300(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V

    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$200(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/telegram/ui/Cells/EditEmojiTextCell;->autofocused:Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
