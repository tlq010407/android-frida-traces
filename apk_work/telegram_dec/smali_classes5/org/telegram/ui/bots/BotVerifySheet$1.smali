.class Lorg/telegram/ui/bots/BotVerifySheet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/bots/BotVerifySheet;->openSheet(Landroid/content/Context;IJJLorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreEditText:Z

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field final synthetic val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;ILorg/telegram/ui/Components/OutlineTextContainerView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput p2, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$maxLength:I

    iput-object p3, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->ignoreEditText:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$maxLength:I

    if-le v0, v2, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->ignoreEditText:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iput-boolean v3, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->ignoreEditText:Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v2, p0, Lorg/telegram/ui/bots/BotVerifySheet$1;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
