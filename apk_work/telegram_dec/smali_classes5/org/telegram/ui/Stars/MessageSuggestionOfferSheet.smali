.class public Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# instance fields
.field private final balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

.field private balanceCloudVisible:Z

.field private final buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

.field private final dollarsEqView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final iconStars:Landroid/widget/ImageView;

.field private final iconTon:Landroid/widget/ImageView;

.field private inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private inputAmountError:I

.field private final inputAmountMaxStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private final inputAmountMaxTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private final inputAmountMinStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private final inputAmountMinTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

.field private isFullyVisible:Z

.field private final isMonoForumAdmin:Z

.field private final mode:I

.field private final publishingTimeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private selectedTime:J

.field private final spanRefStars:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final spanRefTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private final starsCountEditHint:Landroid/widget/TextView;

.field private final starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;


# direct methods
.method public static synthetic $r8$lambda$CfDFHtBQZhtIh_tUnEXEtDV4KL4(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EgGKIzwkSg13XCDUI3-7IUy5Ijc(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iv_NvSsw0utf8b5gfnNggrLo0pI(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDO6x0eBlQAByPBm3LjgzD5B1kI(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$4(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$gcqA06vI64NgNxDZ7HpnBY8GeFw(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$knv52gY02EmZTgxWFRw6qUuxx34(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$6(Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wIhW6k8RMkuf2ccE7C9W8uP--v8(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$show$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$wX7buxblWDgRTw-Yot-7YICvF2o(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->lambda$new$5(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/messenger/MessageSuggestionParams;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 33

    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p5

    move-object/from16 v5, p7

    move/from16 v11, p8

    const/4 v12, 0x1

    invoke-direct {v9, v4, v12, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    new-array v0, v12, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->spanRefStars:[Lorg/telegram/ui/Components/ColoredImageSpan;

    new-array v0, v12, [Lorg/telegram/ui/Components/ColoredImageSpan;

    iput-object v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->spanRefTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

    iput v11, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->mode:I

    iput-boolean v12, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    iput-boolean v12, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    invoke-static/range {p2 .. p4}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(IJ)Z

    move-result v0

    iput-boolean v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->isMonoForumAdmin:Z

    const/4 v13, 0x0

    if-nez v0, :cond_1

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarsController;->canUseTon()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v3, v2, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    invoke-virtual {v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->get()J

    move-result-wide v6

    sget-object v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v6

    iput-object v6, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMinTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v6, v2, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;

    invoke-virtual {v6}, Lorg/telegram/messenger/AppGlobalConfig$ConfigLong;->get()J

    move-result-wide v6

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMaxTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v3, v2, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v3

    int-to-long v6, v3

    sget-object v14, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v6, v7, v14}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromDecimal(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v3

    iput-object v3, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMinStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAmountMax:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v14}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromDecimal(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v2

    iput-object v2, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMaxStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Stars/BalanceCloud;

    move/from16 v3, p2

    invoke-direct {v0, v4, v3, v5}, Lorg/telegram/ui/Stars/BalanceCloud;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    const v6, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, -0x2

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x31

    const/16 v18, 0x0

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v6, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, v9, v4, v5}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    move/from16 v3, p2

    iput-object v2, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    :goto_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x38

    const/16 v18, 0x37

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v15, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v6, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v13, 0x800013

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v11, :cond_3

    sget v13, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferTitle:I

    goto :goto_3

    :cond_3
    sget v13, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferChangeTitle:I

    :goto_3
    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v23, 0x16

    const/16 v24, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x77

    const/16 v21, 0x16

    const/16 v22, 0x0

    invoke-static/range {v17 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v13, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v12, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance v12, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda1;

    invoke-direct {v12, v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v26, 0x6

    const/16 v27, 0x0

    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x0

    const/16 v23, 0x15

    const/16 v25, 0x0

    invoke-static/range {v20 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v12, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v12, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_4

    new-instance v0, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->SuggestedOfferStars:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v6, Lorg/telegram/messenger/R$string;->SuggestedOfferTON:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda2;

    invoke-direct {v6, v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->setTabs(Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    const/high16 v24, 0x41900000    # 18.0f

    const/high16 v25, 0x41400000    # 12.0f

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/high16 v22, 0x41900000    # 18.0f

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    iput-object v0, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    :goto_4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v13, -0x2

    invoke-static {v6, v13, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v17, 0x41a00000    # 20.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const v6, 0x10000006

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v13, 0x42280000    # 42.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v23, 0x41800000    # 16.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    move-object/from16 v25, v14

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v12, v13, v6, v3, v14}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setLeftPadding(F)V

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    iget-object v3, v10, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isZero()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    const/4 v6, 0x1

    const/4 v13, 0x0

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v6, v3, v13}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZZ)V

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setForceUseCenter2(Z)V

    new-instance v3, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v3, 0x30

    const/4 v6, -0x1

    const/4 v13, -0x2

    invoke-static {v6, v13, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v30, 0x41900000    # 18.0f

    const/16 v31, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x3a

    const/high16 v28, 0x41900000    # 18.0f

    const/16 v29, 0x0

    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->iconStars:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->star_small_inner:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v32, 0x0

    const/16 v26, 0x16

    const/high16 v27, 0x41b00000    # 22.0f

    const/16 v28, 0x13

    const/high16 v29, 0x41600000    # 14.0f

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->iconTon:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->ton:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, -0xcc6e2c

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->dollarsEqView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    const/high16 v31, 0x41800000    # 16.0f

    const/16 v26, -0x2

    const/high16 v27, -0x40800000    # -1.0f

    const/16 v28, 0x15

    const/16 v29, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditHint:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v31, 0x21

    const/16 v32, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x37

    const/16 v29, 0x21

    const/16 v30, 0x4

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$1;

    invoke-direct {v1, v9, v4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$1;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/content/Context;)V

    iput-object v1, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->publishingTimeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v3, 0x1

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v1, v3, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    move-object/from16 v19, v12

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v1, v3, v14, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance v3, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferTitleTime:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    const/high16 v31, 0x42400000    # 48.0f

    const/16 v32, 0x0

    const/high16 v27, -0x40000000    # -2.0f

    const/16 v28, 0x30

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x3ca3d70a    # 0.02f

    const v7, 0x3f99999a    # 1.2f

    invoke-static {v3, v1, v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v1, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, v9, v4, v5}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v30, 0x41900000    # 18.0f

    const/16 v31, 0x0

    const/16 v27, 0x3a

    const/high16 v28, 0x41900000    # 18.0f

    const/high16 v29, 0x41c00000    # 24.0f

    invoke-static/range {v26 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-direct {v7, v8, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v31, 0x41600000    # 14.0f

    const/16 v26, 0x18

    const/high16 v27, 0x41c00000    # 24.0f

    const/16 v28, 0x15

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->PostSuggestionsAddTimeHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PostSuggestionsAddTimeHint2:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v6, v6, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->get(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v31, 0x21

    const/16 v32, 0x18

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x37

    const/16 v29, 0x21

    const/16 v30, 0x4

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x50

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v13, v4, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v13, v9, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v14, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p7

    move-wide/from16 v6, p3

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    if-ne v11, v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferChangeUpdateTerms:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_6
    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    iget-object v2, v10, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v2, v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/messenger/MessageSuggestionParams;->amount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isZero()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V

    goto :goto_7

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    move-object/from16 v4, v25

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    invoke-direct {v9, v0, v3, v2, v3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V

    :goto_7
    iget-wide v0, v10, Lorg/telegram/messenger/MessageSuggestionParams;->time:J

    invoke-direct {v9, v0, v1, v3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setSelectedTime(JZ)V

    invoke-virtual {v9, v15}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$2;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method private checkAmountInputText(Z)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v2, Lorg/telegram/messenger/R$string;->SuggestAPostTooMuch:I

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMax()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, p1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v2, Lorg/telegram/messenger/R$string;->SuggestAPostTooSmall:I

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMin()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, p1

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object p1, p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p1, v0, :cond_2

    sget p1, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferTitlePriceStars:I

    goto :goto_1

    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferTitlePriceTON:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private checkBalanceCloudVisibility()V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->isFullyVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloudVisible:Z

    if-eq v1, v0, :cond_6

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloudVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const v4, 0x3f19999a    # 0.6f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    return-void
.end method

.method private checkButtonEnabled(Z)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method private checkButtonOfferText(Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->mode:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v3, v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v5, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferStars:I

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v6

    const/16 v2, 0x2c

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->spanRefTon:[Lorg/telegram/ui/Components/ColoredImageSpan;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->spanRefStars:[Lorg/telegram/ui/Components/ColoredImageSpan;

    :goto_2
    invoke-static {v3, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(ZLjava/lang/CharSequence;[Lorg/telegram/ui/Components/ColoredImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferForFree:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferChangeUpdateTerms:I

    goto :goto_3

    :goto_4
    return-void
.end method

.method private checkRateText(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v1, v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v1, v1, Lorg/telegram/messenger/AppGlobalConfig;->tonUsdRate:Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;

    invoke-virtual {v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigDouble;->get()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->starsUsdWithdrawRate1000:F

    float-to-double v1, v1

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/BillingController;->getInstance()Lorg/telegram/messenger/BillingController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v4}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDouble()D

    move-result-wide v4

    mul-double v4, v4, v1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v1

    double-to-long v1, v4

    const-string v4, "USD"

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v2, v4, v5}, Lorg/telegram/messenger/BillingController;->formatCurrency(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->dollarsEqView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->PostSuggestionsAnytime:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getInputAmountMax()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v0, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMaxTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMaxStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    :goto_0
    return-object v0
.end method

.method private getInputAmountMin()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v0, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMinTON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountMinStars:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 1

    iget-object p3, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object p3, p3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne p3, v0, :cond_0

    new-instance p3, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p3}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    int-to-long p1, p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->setSelectedTime(JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    iget-wide v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    new-instance v3, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createSuggestedMessageDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/ChatActivity;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JLorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz p1, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->buttonView:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v2, v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(ILorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->isMonoForumAdmin:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v4}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v2, v10, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, v3, :cond_4

    new-instance v2, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;

    invoke-virtual {v10}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v14

    const/4 v3, 0x1

    move-wide/from16 v4, p5

    invoke-static {v1, v4, v5, v3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getMonoForumTitle(IJZ)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0xd

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsNeededSheet;->show()V

    goto :goto_1

    :cond_4
    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, v1, :cond_6

    new-instance v1, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZLjava/lang/Runnable;)V

    invoke-virtual {v1}, Lorg/telegram/ui/TON/TONIntroActivity$StarsNeededSheet;->show()V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-wide v2, v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/MessageSuggestionParams;->of(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;J)Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-interface {v2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$show$7()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private onCurrencyChanged(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->currencyTabsView:Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v3, v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1}, Lorg/telegram/ui/Components/HorizontalRoundTabsLayout;->setSelectedIndex(IZ)V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v2, v2, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditHint:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferSubtitleStars:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMax()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object v4, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditHint:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->PostSuggestionsOfferSubtitleTON:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v4, 0x2002

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMax()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimal()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v0, v0, [Landroid/text/InputFilter;

    aput-object v4, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->iconStars:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v4, v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v4, v3, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v4, v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v4, v3, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v4, v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v4, v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->iconTon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v5, v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v6, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v5, v6, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v5, v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v5, v6, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v5, v5, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v5, v6, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_9
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_8

    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v4, v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v4, v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->iconTon:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v3, v3, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v3, v4, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_c
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_8
    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v1, v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stars/BalanceCloud;->setCurrency(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;Z)V

    :cond_d
    return-void
.end method

.method private setAmount(Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;ZZZ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    or-int/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMax()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->getInputAmountMin()Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    :cond_2
    if-nez p3, :cond_4

    iget-object p1, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    iget-object v4, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    iget-object v4, v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-eq p1, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-nez p3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez p3, :cond_7

    iget p3, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    if-eq v1, p3, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_a

    iget-object p3, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditOutline:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmountError:I

    and-int/lit8 v1, v1, -0x9

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateError(F)V

    :cond_a
    if-eqz p1, :cond_b

    invoke-direct {p0, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->onCurrencyChanged(Z)V

    :cond_b
    if-nez p1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkAmountInputText(Z)V

    :cond_d
    if-nez p1, :cond_e

    if-nez v0, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkButtonOfferText(Z)V

    invoke-direct {p0, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkButtonEnabled(Z)V

    :cond_f
    if-nez p1, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkRateText(Z)V

    :cond_11
    if-eqz p2, :cond_12

    if-eqz v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->inputAmount:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    invoke-virtual {p1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asDecimalString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->starsCountEditField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_12
    return-void
.end method

.method private setSelectedTime(JZ)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->selectedTime:J

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->publishingTimeField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->formatDateTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, p3}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkButtonEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected isTouchOutside(FF)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloudVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->balanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->isTouchOutside(FF)Z

    move-result p1

    return p1
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onContainerTranslationYChanged(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkBalanceCloudVisibility()V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onOpenAnimationEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->isFullyVisible:Z

    invoke-direct {p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->checkBalanceCloudVisibility()V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    new-instance v0, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
