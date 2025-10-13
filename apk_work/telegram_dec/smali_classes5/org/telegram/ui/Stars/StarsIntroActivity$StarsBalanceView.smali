.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsBalanceView"
.end annotation


# instance fields
.field private final amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private bounceAnimator:Landroid/animation/ValueAnimator;

.field private final currentAccount:I

.field private dialogId:J

.field private final headerTextView:Landroid/widget/TextView;

.field public lastBalance:J

.field private loadingString:Landroid/text/SpannableString;


# direct methods
.method public static synthetic $r8$lambda$_2U21APNk2Vxo8_2UfXBZIICIAU(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lambda$bounce$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    iput p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->headerTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v3, Lorg/telegram/messenger/R$string;->StarsBalance:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, -0x2

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$1;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean p2, v4, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 p1, 0x41980000    # 19.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v4, p1, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/16 v6, 0x14

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->updateBalance(Z)V

    const/high16 p1, 0x41700000    # 15.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method private synthetic lambda$bounce$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public bounce()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView$2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->updateBalance(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->updateBalance(Z)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setDialogId(J)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->updateBalance(Z)V

    :cond_0
    return-void
.end method

.method public updateBalance(Z)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    iget v3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    goto :goto_3

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stars/BotStarsController;->getStarsRevenueStats(J)Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_starsRevenueStats;->status:Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_starsRevenueStatus;->current_balance:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    :goto_1
    move-wide v2, v0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    move v1, v6

    :goto_3
    iget-wide v6, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->bounce()V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->loadingString:Landroid/text/SpannableString;

    if-nez v0, :cond_5

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->loadingString:Landroid/text/SpannableString;

    new-instance v1, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->loadingString:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->loadingString:Landroid/text/SpannableString;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    iput-wide v8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->amountTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v0, 0x20

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iput-wide v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsBalanceView;->lastBalance:J

    :goto_4
    return-void
.end method
