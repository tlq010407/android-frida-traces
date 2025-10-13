.class public Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TON/TONIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsNeededSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private final footerView:Landroid/widget/FrameLayout;

.field private final headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

.field private final requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private final topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private whenPurchased:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$63ebakQDZy7DlQ-CsYGfG7onhPk(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Mu6DZDKPvv5J6Suhu4Yy_HwfUw(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LSa81ZAjdoijlusziDMlB-u3Qco(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZLjava/lang/Runnable;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iput-object p5, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iget-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p5, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p5, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p5}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p5, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p5, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p5, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {p5, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p5, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p5

    invoke-virtual {p0, p5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    iput-object p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    new-instance p5, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p5, p1, v0, p2}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p2

    iget-object v0, p5, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->TonNeededTitle:I

    invoke-virtual {p3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide p2

    sub-long/2addr v3, p2

    sget-object p2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v3, v4, p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p5, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    sget p3, Lorg/telegram/messenger/R$string;->FragmentAddFunds:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p5, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    iget-object p5, p5, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p5

    invoke-static {p3, p5}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-direct {p1, p3, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->topUpButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v7, 0x14

    const/16 v8, 0x14

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x11

    const/16 v5, 0x14

    const/16 v6, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p4, :cond_1

    invoke-static {}, Lorg/telegram/ui/TON/TONIntroActivity;->allowTopUp()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->Close:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance p2, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_1
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->TopUpViaFragment:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    new-instance p2, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TopUpViaFragmentLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    new-instance p1, Lorg/telegram/ui/Components/UniversalAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    new-instance v6, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    const/4 p2, 0x1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    if-eq p1, p3, :cond_0

    sget p3, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p3, :cond_3

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    iget-object p3, p3, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->TonNeededTitle:I

    iget-object v1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object v1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->dismiss()V

    :cond_3
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->iconView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    :cond_0
    return-void
.end method

.method public dismissInternal()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalanceAmount()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->requiredAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    :cond_2
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
