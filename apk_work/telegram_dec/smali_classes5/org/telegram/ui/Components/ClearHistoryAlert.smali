.class public Lorg/telegram/ui/Components/ClearHistoryAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;,
        Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;
    }
.end annotation


# instance fields
.field private autoDeleteOnly:Z

.field private cell:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private currentTimer:I

.field private delegate:Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;

.field private dismissedDelayed:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private location:[I

.field private newTimer:I

.field private scrollOffsetY:I

.field private setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$EZ1C5bzlmLE_6knIy35pvM4pXbU([ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->lambda$new$0([ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8dWEbOUtv_zIMtgz_WpgOxrUbI(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcPCgmpdf1VgK6LwK17dsZfE_tc(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v6, 0x2

    new-array v7, v6, [I

    iput-object v7, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->location:[I

    const/4 v7, 0x1

    xor-int/lit8 v8, p4, 0x1

    iput-boolean v8, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    if-eqz v2, :cond_0

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v8

    if-eqz v8, :cond_1

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$UserFull;->ttl_period:I

    goto :goto_0

    :cond_0
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v8, v9, v10}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v8

    if-eqz v8, :cond_1

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$ChatFull;->ttl_period:I

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-nez v8, :cond_2

    iput v5, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    iput v5, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    goto :goto_1

    :cond_2
    const v10, 0x15180

    if-ne v8, v10, :cond_3

    iput v7, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    iput v7, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    goto :goto_1

    :cond_3
    const v10, 0x93a80

    if-ne v8, v10, :cond_4

    iput v6, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    iput v6, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    goto :goto_1

    :cond_4
    iput v9, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    iput v9, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v6, Lorg/telegram/ui/Components/ClearHistoryAlert$1;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/Components/ClearHistoryAlert$1;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v6, v8, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v8, Lorg/telegram/ui/Components/ClearHistoryAlert$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/ClearHistoryAlert$2;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x50

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-static {v12, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    if-eqz v2, :cond_5

    iget-boolean v8, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v8, :cond_5

    move v11, v10

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v16, v9, v14

    if-eqz v16, :cond_6

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/messenger/MessagesController;->canRevokePmInbox:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    move v11, v10

    :cond_6
    const/4 v9, 0x0

    :goto_2
    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    if-eqz v2, :cond_7

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->revokeTimePmLimit:I

    goto :goto_3

    :cond_7
    iget v10, v10, Lorg/telegram/messenger/MessagesController;->revokeTimeLimit:I

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v9, :cond_8

    const v9, 0x7fffffff

    if-ne v10, v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    new-array v10, v7, [Z

    aput-boolean v5, v10, v5

    iget-boolean v14, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    const/high16 v15, 0x41a00000    # 20.0f

    if-nez v14, :cond_12

    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v14, v7, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget v15, Lorg/telegram/messenger/R$string;->ClearHistory:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v15, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x17

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x33

    const/16 v21, 0x17

    const/16 v22, 0x14

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v15, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v12, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v14, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v14}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V

    sget-boolean v14, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x5

    goto :goto_5

    :cond_9
    const/4 v14, 0x3

    :goto_5
    or-int/lit8 v14, v14, 0x30

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v14, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x17

    const/16 v24, 0x5

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x33

    const/16 v21, 0x17

    const/16 v22, 0x10

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_a

    sget v3, Lorg/telegram/messenger/R$string;->AreYouSureClearHistoryWithUser:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v14, v15, v5

    const-string v14, "AreYouSureClearHistoryWithUser"

    invoke-static {v14, v3, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    :goto_7
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_a
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-boolean v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v14, :cond_b

    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_9

    :cond_b
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/R$string;->AreYouSureClearHistoryGroup:I

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_c
    sget v3, Lorg/telegram/messenger/R$string;->AreYouSureClearHistoryChannel:I

    goto :goto_8

    :cond_d
    :goto_9
    sget v14, Lorg/telegram/messenger/R$string;->AreYouSureClearHistoryWithChat:I

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v15, v7, [Ljava/lang/Object;

    aput-object v3, v15, v5

    const-string v3, "AreYouSureClearHistoryWithChat"

    invoke-static {v3, v14, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :goto_a
    if-eqz v9, :cond_10

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v3, v1, v7, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    sget v9, Lorg/telegram/messenger/R$string;->ClearHistoryOptionAlso:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v2, v12, v5

    const-string v2, "ClearHistoryOptionAlso"

    invoke-static {v2, v9, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v3, v2, v9, v5, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v9, 0x40a00000    # 5.0f

    if-eqz v3, :cond_e

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_b

    :cond_e
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_b
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_c

    :cond_f
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    :goto_c
    invoke-virtual {v2, v3, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x30

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v3, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda0;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda0;-><init>([Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    new-instance v2, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lorg/telegram/messenger/R$string;->AlertClearHistory:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x32

    const/16 v20, 0x33

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v8, v9, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v8, -0x1

    invoke-static {v8, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteHeader:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    if-eqz v8, :cond_11

    const/high16 v19, 0x41a00000    # 20.0f

    goto :goto_d

    :cond_11
    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_d
    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_11

    :cond_12
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    sget v9, Lorg/telegram/messenger/R$raw;->utyan_private:I

    const/16 v10, 0x78

    invoke-virtual {v8, v9, v10, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v5, v9, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v9, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x11

    const/16 v20, 0x0

    const/16 v14, 0xa0

    const/16 v15, 0xa0

    const/16 v16, 0x31

    const/16 v17, 0x11

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget v9, Lorg/telegram/messenger/R$string;->AutoDeleteAlertTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v18, 0x12

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v2, :cond_13

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteAlertUserInfo:I

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v2, v9, v5

    const-string v2, "AutoDeleteAlertUserInfo"

    invoke-static {v2, v3, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_13
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_14

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteAlertChannelInfo:I

    :goto_f
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_14
    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteAlertGroupInfo:I

    goto :goto_f

    :goto_10
    iget-object v2, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v19, 0x1e

    const/16 v20, 0x14

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v16, 0x31

    const/16 v17, 0x1e

    const/16 v18, 0x16

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    new-instance v2, Lorg/telegram/ui/Components/SlideChooseView;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v3, Lorg/telegram/ui/Components/ClearHistoryAlert$3;

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/Components/ClearHistoryAlert$3;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteNever:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$string;->AutoDelete24Hours:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lorg/telegram/messenger/R$string;->AutoDelete7Days:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$string;->AutoDelete1Month:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v6, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    iget v6, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    invoke-virtual {v2, v6, v3}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/16 v16, 0x0

    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v6, v8, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    invoke-static {v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v6, Lorg/telegram/messenger/R$string;->AutoDeleteInfo:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteSet:I

    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_15
    if-eqz p4, :cond_16

    iget v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    if-nez v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->EnableAutoDelete:I

    goto :goto_12

    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    sget v3, Lorg/telegram/messenger/R$string;->AutoDeleteConfirm:I

    goto :goto_12

    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;->access$700(Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/ClearHistoryAlert;->updateTimerButton(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ClearHistoryAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ClearHistoryAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ClearHistoryAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ClearHistoryAlert;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ClearHistoryAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ClearHistoryAlert;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ClearHistoryAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ClearHistoryAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->updateTimerButton(Z)V

    return-void
.end method

.method private static synthetic lambda$new$0([ZLandroid/view/View;)V
    .locals 3

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->dismissedDelayed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->delegate:Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;

    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->cell:Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;->onClearHistory(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->dismissedDelayed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    iget v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->dismissedDelayed:Z

    const/4 v1, 0x3

    const/16 v2, 0x46

    if-ne p1, v1, :cond_1

    const p1, 0x28de80

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x93a80

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const p1, 0x15180

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/16 v2, 0x47

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->delegate:Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;

    invoke-interface {v0, p1, v2}, Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;->onAutoDeleteHistory(II)V

    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->dismissedDelayed:Z

    if-eqz p1, :cond_5

    new-instance p1, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ClearHistoryAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :goto_1
    return-void
.end method

.method private updateLayout()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->location:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->location:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41980000    # 19.0f

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->scrollOffsetY:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->scrollOffsetY:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private updateTimerButton(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->currentTimer:I

    iget v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->newTimer:I

    const-wide/16 v2, 0xb4

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->autoDeleteOnly:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->setTimerButton:Lorg/telegram/ui/Components/ClearHistoryAlert$BottomSheetCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert;->delegate:Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;

    return-void
.end method
