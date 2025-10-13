.class public Lorg/telegram/ui/Stars/BalanceCloud;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private final coloredImageSpansTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

.field private final currentAccount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView1:Landroid/widget/TextView;

.field private final textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;


# direct methods
.method public static synthetic $r8$lambda$HRAZuAymy9_ChvkWyKU_utQrKQ8(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stars/BalanceCloud;->lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJ3wfEqmP72qkfS94rHIzIfiAkk(Lorg/telegram/ui/Stars/BalanceCloud;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/BalanceCloud;->lambda$updateBalance$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->coloredImageSpansTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

    iput p2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    iput-object p4, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p3, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, p3, v2, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView1:Landroid/widget/TextView;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1, p4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfoLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stars/BalanceCloud$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p4}, Lorg/telegram/ui/Stars/BalanceCloud$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const p4, 0x402aaaab

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v0, p4, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BalanceCloud;->updateBalance(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Stars/BalanceCloud;-><init>(Landroid/content/Context;ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$updateBalance$1()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private updateBalance(Z)V
    .locals 7

    const/4 p1, 0x0

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const/4 v3, 0x1

    const v4, 0x3f19999a    # 0.6f

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView1:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfo:I

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v5

    const/16 v0, 0x2c

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, p1

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfoLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stars/BalanceCloud$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/BalanceCloud$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/BalanceCloud;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v1, 0x402aaaab

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView1:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->Gift2MessageStarsInfoTON:I

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, p1

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/BalanceCloud;->coloredImageSpansTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(ZLjava/lang/CharSequence;F[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->coloredImageSpansTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

    aget-object p1, v1, p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setColorKey(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDouble()D

    move-result-wide v2

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v0, v0, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    invoke-virtual {v0}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->get()D

    move-result-wide v4

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-long v2, v2

    const-string v0, "USD"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object v2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    iget-object v4, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-static {v2, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/BalanceCloud;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->textView2:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/BalanceCloud;->updateBalance(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/BalanceCloud;->updateBalance(Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setCurrency(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stars/BalanceCloud;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stars/BalanceCloud;->updateBalance(Z)V

    :cond_0
    return-void
.end method
