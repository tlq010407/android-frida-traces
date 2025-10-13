.class public Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;
.super Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$AvatarHolderView;,
        Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$AdditionalCounterView;
    }
.end annotation


# instance fields
.field private final selectedUsers:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$x5XuO-5AA61IYF-gOshNarU60IY(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/List;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->init()V

    return-void
.end method

.method private init()V
    .locals 10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->updateRows()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setCloseStyle(Z)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x42800000    # 64.0f

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$AvatarHolderView;->createAvatarsContainer(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dismiss()V

    return-void
.end method

.method public static show(Ljava/util/List;)V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v1, v0, v2, p0, v3}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/List;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setAnimateConfetti(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setAnimateConfettiWithStars(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    return-void
.end method


# virtual methods
.method protected afterCellCreated(ILandroid/view/View;)V
    .locals 1

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;)V

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Z)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    return-void
.end method

.method protected attachIconContainer(Landroid/widget/LinearLayout;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5e

    const/16 v4, 0x5e

    goto :goto_0

    :cond_0
    const/16 v1, 0x53

    const/16 v4, 0x53

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x41e00000    # 28.0f

    const/high16 v6, 0x41e00000    # 28.0f

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42080000    # 34.0f

    const/high16 v6, 0x42080000    # 34.0f

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v8, 0x41100000    # 9.0f

    goto :goto_2

    :cond_2
    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v8, 0x41600000    # 14.0f

    :goto_2
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected needDefaultPremiumBtn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(Z)V
    .locals 9

    const/4 p1, 0x3

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v5, "GiftPremiumGiftsSent"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_2

    const-string v3, "GiftPremiumUsersPurchasedManyZero"

    if-eq v1, v0, :cond_1

    const-string v5, "GiftPremiumUsersThree"

    if-eq v1, p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumUsersThree:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v3, v8, v2

    aput-object v6, v8, v4

    aput-object v7, v8, v0

    invoke-static {v5, v1, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string v0, "GiftPremiumUsersPurchasedMany"

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumUsersThree:I

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v6, p1, v2

    aput-object v7, p1, v4

    aput-object v8, p1, v0

    invoke-static {v5, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremiumUsersPurchasedManyZero:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->GiftPremiumUsersTwo:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v5, v0, v4

    const-string v1, "GiftPremiumUsersTwo"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremiumUsersPurchasedManyZero:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->GiftPremiumUsersOne:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremiumUsersPurchasedManyZero:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremiumGiftsSentStatusForUser:I

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftSentBottomSheet;->selectedUsers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "GiftPremiumGiftsSentStatusForUser"

    invoke-static {v1, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->GiftPremiumGiftsSentStatus:I

    const-string v1, "GiftPremiumGiftsSentStatus"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    return-void
.end method

.method protected updateRows()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->termsRow:I

    return-void
.end method
