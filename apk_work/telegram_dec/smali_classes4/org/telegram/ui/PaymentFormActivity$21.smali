.class Lorg/telegram/ui/PaymentFormActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->showChoosePaymentMethod(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity$21;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic currentPasswordUpdated(Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$currentPasswordUpdated(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    return-void
.end method

.method public synthetic didSelectNewAddress(Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$didSelectNewAddress(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;)V

    return-void
.end method

.method public didSelectNewCard(Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0, p5}, Lorg/telegram/ui/PaymentFormActivity;->access$5102(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;)Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object p5, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p5, p1}, Lorg/telegram/ui/PaymentFormActivity;->access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/PaymentFormActivity;->access$5202(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/PaymentFormActivity;->access$5302(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;)Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsGooglePay;

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p3}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p3}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p4, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p5}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p5}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p3}, Lorg/telegram/ui/PaymentFormActivity;->access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    sget p5, Lorg/telegram/messenger/R$string;->PaymentCheckoutMethod:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_payment_card:I

    invoke-virtual {p1, p3, p5, v0, p4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object p1

    aget-object p1, p1, p4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {p1}, Lorg/telegram/ui/PaymentFormActivity;->access$5400(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$21;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return p2
.end method

.method public synthetic onFragmentDestroyed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate$-CC;->$default$onFragmentDestroyed(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    return-void
.end method
