.class Lorg/telegram/ui/Stars/StarsIntroActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;->showGiftResellPriceSheet(Landroid/content/Context;IJLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignore:Z

.field private shakeDp:I

.field final synthetic val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field final synthetic val$commission:I

.field final synthetic val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field final synthetic val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field final synthetic val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field final synthetic val$infoView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field final synthetic val$max:J

.field final synthetic val$min:J

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(JLorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/Components/OutlineTextContainerView;JLorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;)V
    .locals 0

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$max:J

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-wide p5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iput-object p8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$infoView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object p9, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p10, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$commission:I

    iput-object p11, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->shakeDp:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->ignore:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$max:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->ignore:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->shakeDp:I

    neg-int v1, v1

    iput v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->shakeDp:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    goto :goto_1

    :catch_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->ignore:Z

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->ignore:Z

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_3

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$max:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_3

    const/4 p1, 0x1

    :cond_3
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    const/high16 p1, 0x447a0000    # 1000.0f

    cmp-long v5, v1, v3

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$infoView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-gez v5, :cond_4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$infoView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-wide v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    long-to-int v5, v4

    const-string v4, "ResellGiftInfoMin"

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$infoView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    long-to-float v4, v1

    iget v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$commission:I

    int-to-float v5, v5

    div-float/2addr v5, p1

    mul-float v4, v4, v5

    float-to-int v4, v4

    const-string v5, "ResellGiftInfo"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editTextContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    iget-wide v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$min:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$dollarsView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2248"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v4

    long-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$17;->val$commission:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v5

    double-to-long v1, v1

    const-string p1, "USD"

    invoke-virtual {v4, v1, v2, p1}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
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
