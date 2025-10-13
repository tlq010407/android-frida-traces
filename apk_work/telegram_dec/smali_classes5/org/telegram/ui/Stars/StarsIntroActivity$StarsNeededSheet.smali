.class public Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StarsNeededSheet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;
    }
.end annotation


# instance fields
.field private final BUTTON_EXPAND:I

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private expanded:Z

.field private final fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

.field private final footerView:Landroid/widget/FrameLayout;

.field private final headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

.field private final starsNeeded:J

.field private whenPurchased:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$94_khXAg706NUcIGvxR92vVj7YM(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j-GQ0uyz6T0jL4I6J735ULoaTAU(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ltA80qvLDc7-URXEwviEJy7dRtw(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->lambda$onItemClick$2(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->BUTTON_EXPAND:I

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    iget-object p7, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v2, 0x0

    invoke-virtual {p7, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p7, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;)V

    invoke-virtual {p7, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance p7, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p7}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p7, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    invoke-virtual {p7, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p7, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {p7, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    sget p7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-static {p7, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p7

    invoke-virtual {p0, p7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    new-instance p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {p7, p1, v1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p7, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v1

    iget-wide v3, v1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object v1, p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    sub-long/2addr p3, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    long-to-int p4, p3

    new-array p3, v2, [Ljava/lang/Object;

    const-string v3, "StarsNeededTitle"

    invoke-static {v3, p4, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p3, 0x1

    if-ne p5, p3, :cond_0

    const-string p4, "StarsNeededTextBuySubscription"

    goto/16 :goto_2

    :cond_0
    const/4 p4, 0x2

    if-ne p5, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x7

    if-ne p5, p4, :cond_2

    const-string p4, "StarsNeededTextKeepBotSubscription"

    goto/16 :goto_2

    :cond_2
    const/16 p4, 0x8

    if-ne p5, p4, :cond_3

    const-string p4, "StarsNeededTextKeepBizSubscription"

    goto/16 :goto_2

    :cond_3
    const/4 p4, 0x3

    if-ne p5, p4, :cond_4

    :goto_0
    const-string p4, "StarsNeededTextKeepSubscription"

    goto/16 :goto_2

    :cond_4
    const/4 p4, 0x4

    if-ne p5, p4, :cond_7

    const-string p4, "StarsNeededTextLink"

    if-nez p6, :cond_5

    move-object p5, p4

    goto :goto_1

    :cond_5
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StarsNeededTextLink_"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->nullable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    move-object p4, p5

    goto :goto_2

    :cond_7
    const/4 p4, 0x5

    if-ne p5, p4, :cond_8

    const-string p4, "StarsNeededTextReactions"

    goto :goto_2

    :cond_8
    const/4 p4, 0x6

    if-ne p5, p4, :cond_9

    const-string p4, "StarsNeededTextGift"

    goto :goto_2

    :cond_9
    const/16 p4, 0xc

    if-ne p5, p4, :cond_a

    const-string p4, "StarsNeededTextGiftChannel"

    goto :goto_2

    :cond_a
    const/16 p4, 0xd

    if-ne p5, p4, :cond_b

    const-string p4, "StarsNeededTextPrivateMessage"

    goto :goto_2

    :cond_b
    const/16 p4, 0xa

    if-ne p5, p4, :cond_c

    const-string p4, "StarsNeededTextGiftUpgrade"

    goto :goto_2

    :cond_c
    const/16 p4, 0xb

    if-ne p5, p4, :cond_d

    const-string p4, "StarsNeededTextGiftTransfer"

    goto :goto_2

    :cond_d
    const/16 p4, 0x9

    if-ne p5, p4, :cond_e

    const-string p4, "StarsNeededBizText"

    goto :goto_2

    :cond_e
    const-string p4, "StarsNeededText"

    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_f

    iget-object p4, p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    const-string p5, ""

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_f
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getStringResId(Ljava/lang/String;)I

    move-result p5

    new-array v1, p3, [Ljava/lang/Object;

    aput-object p6, v1, v2

    invoke-static {p4, p5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->nullable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_10

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_10
    iget-object p4, p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    iget-object p6, p7, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p6

    invoke-static {p5, p6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_3
    iget-object p4, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p4, p5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p4, Landroid/widget/FrameLayout;

    invoke-direct {p4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    new-instance p5, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p5, p1, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p4, v2, p6, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {p5, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    sget p1, Lorg/telegram/messenger/R$string;->StarsTOS:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;)V

    invoke-static {p1, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p6

    invoke-static {p3, p6}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p3

    invoke-virtual {p5, p3}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/4 p3, -0x2

    invoke-static {p3, v0, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p4, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/FireworksOverlay;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StarsTOSLink:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/ui/Components/UItem;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/FrameLayout;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->stars_topup:I

    sget v2, Lorg/telegram/messenger/R$string;->StarsAcquired:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    long-to-int p1, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "StarsAcquiredInfo"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p3, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->fireworksOverlay:Lorg/telegram/ui/Components/FireworksOverlay;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start(Z)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->invalidateTransactions(Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    :goto_0
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

    new-instance v6, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starOptionsLoaded:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    if-ne p1, p2, :cond_3

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-object p3, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    iget-object p3, p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    const-string v0, "StarsNeededTitle"

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->dismiss()V

    :cond_3
    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->iconView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

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
    .locals 13

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lorg/telegram/messenger/R$string;->TelegramStarsChoose:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController;->getOptions()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    iget-wide v8, v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iget-wide v10, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v8, v7, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->extended:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    if-nez v8, :cond_1

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    invoke-static {v2, v6, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;)Lorg/telegram/ui/Components/UItem;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Lorg/telegram/messenger/R$string;->TelegramStarsChoose:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    iget-wide v7, v5, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;->stars:J

    iget-wide v9, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v6, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v6, v7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    add-int/lit8 v3, v6, 0x1

    invoke-static {v0, v6, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move v6, v3

    goto :goto_4

    :cond_5
    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    if-nez p2, :cond_b

    if-lez v4, :cond_b

    if-eqz p2, :cond_6

    :goto_5
    sget p2, Lorg/telegram/messenger/R$string;->NotifyLessOptions:I

    goto :goto_6

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->NotifyMoreOptions:I

    :goto_6
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    goto :goto_7

    :cond_7
    iput-boolean v1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    goto :goto_a

    :cond_8
    if-lez v3, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    if-nez p2, :cond_b

    if-lez v4, :cond_b

    if-eqz p2, :cond_6

    goto :goto_5

    :goto_7
    const/4 v2, -0x1

    xor-int/2addr v0, v1

    invoke-static {v2, p2, v0}, Lorg/telegram/ui/Stars/StarsIntroActivity$ExpandView$Factory;->asExpand(ILjava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    :goto_8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_9
    :goto_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    invoke-static {v0, v6, v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;->asStarTier(IILorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move v6, v1

    goto :goto_9

    :cond_a
    const/16 p2, 0x1f

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asFlicker(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    goto :goto_8

    :cond_b
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->footerView:Landroid/widget/FrameLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/UItem;->asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->headerView:Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$HeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 3

    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->expanded:Z

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    :cond_0
    const-class p2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarTierView$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p2, p2, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;Lorg/telegram/ui/Components/UItem;)V

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->buy(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stars$TL_starsTopupOption;Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public show()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    iget-wide v2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->starsNeeded:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->whenPurchased:Ljava/lang/Runnable;

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
