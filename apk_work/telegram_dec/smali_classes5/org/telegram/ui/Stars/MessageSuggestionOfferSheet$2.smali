.class Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;-><init>(Landroid/content/Context;IJLorg/telegram/messenger/MessageSuggestionParams;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$000(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {p1, v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromDecimal(Ljava/lang/String;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$000(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {v2, p1, v0, v0, v1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$100(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$300(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$200(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;->this$0:Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->access$200(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

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
