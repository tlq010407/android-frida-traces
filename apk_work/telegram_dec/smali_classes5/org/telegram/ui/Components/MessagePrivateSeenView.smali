.class public Lorg/telegram/ui/Components/MessagePrivateSeenView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final currentAccount:I

.field private final dialogId:J

.field private final dismiss:Ljava/lang/Runnable;

.field private final edit_date:I

.field private final fwd_date:I

.field public isPremiumLocked:Z

.field private final loadingView:Landroid/widget/TextView;

.field private final messageDiff:I

.field private final messageId:I

.field minWidth:F

.field private final premiumTextView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final type:I

.field private final valueLayout:Landroid/widget/LinearLayout;

.field private final valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1onCj4pvO6L8Hb9bbMPAmbQK-A4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$7(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6K3yQphm1BsXrNUfJlrX6Ywaqms(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->request()V

    return-void
.end method

.method public static synthetic $r8$lambda$6VkjybRO9MqmC2d3jzpplZhufnY(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$8(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7SzQMeODf1mM0uEfnn6a1cRtd24(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$guwLb45BisSIq2eY_xOdk0X5n-Y(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jHYwNYYn0fwy3WW39eS9NTIab-g(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$6(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mFKiuqa7A-9qEAjUuAbSEUUzIag(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLIwLc7C7ddHwdykxy5BQI4fe6s(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tNYeNvWb3P9PovYHOSZW-CITRLc(Lorg/telegram/ui/Components/MessagePrivateSeenView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vi8mOgQT9rxFcW7zbYQxpfmDnzY(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    iput v2, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->type:I

    iget v6, v3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    iput-object v4, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v7, p4

    iput-object v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dismiss:Ljava/lang/Runnable;

    invoke-static {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    iget-object v7, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageDiff:I

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iput v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageId:I

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    :goto_0
    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->edit_date:I

    if-eqz v6, :cond_2

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x0

    :goto_2
    iput v6, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->fwd_date:I

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v7, 0x18

    const/high16 v8, 0x41c00000    # 24.0f

    const/16 v9, 0x13

    const/high16 v10, 0x41300000    # 11.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_edited_stamp:I

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    if-ne v2, v8, :cond_4

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_forward_stamp:I

    goto :goto_3

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_played:I

    goto :goto_3

    :cond_5
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_seen:I

    :goto_3
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v6, "loading text "

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/telegram/ui/Components/LoadingSpan;

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-direct {v6, v2, v8, v10, v4}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v7

    const/16 v10, 0x11

    invoke-virtual {v3, v6, v5, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const v10, 0x3f333333    # 0.7f

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v15, 0x41000000    # 8.0f

    const/16 v16, 0x0

    const/16 v10, 0x60

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x13

    const/high16 v13, 0x42200000    # 40.0f

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v10, -0x1

    const/high16 v13, 0x42180000    # 38.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v3, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x40aa8f5c    # 5.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v6, 0x40151eb8    # 2.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v12, 0x0

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x13

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->request()V

    return-void
.end method

.method private synthetic lambda$request$0(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dismiss:Ljava/lang/Runnable;

    new-instance v6, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->showSheet(Landroid/content/Context;IJZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$request$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmReadUnknown:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "YOUR_PRIVACY_RESTRICTED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmRead:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmReadShowWhen:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    const-string v1, "UnknownError"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_1

    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;

    if-eqz p1, :cond_3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;->date:I

    int-to-long v1, p2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPmSeenDate(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    if-eqz p1, :cond_4

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :goto_3
    return-void
.end method

.method private synthetic lambda$request$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget p2, Lorg/telegram/messenger/R$string;->PremiumLastSeenSet:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSheet$4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda7;

    invoke-direct {p3, p4, p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget p2, Lorg/telegram/messenger/R$string;->PremiumReadSet:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSheet$6(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p5, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda6;

    move-object v0, p5

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$7(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    const/4 p7, 0x1

    invoke-virtual {p0, p7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$setPrivacy;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$setPrivacy;-><init>()V

    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object p5, p1, Lorg/telegram/tgnet/tl/TL_account$setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    iget-object p5, p1, Lorg/telegram/tgnet/tl/TL_account$setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance p6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {p6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p5, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;-><init>()V

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p7

    invoke-virtual {p7}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object p7

    iput-object p7, p1, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    if-nez p7, :cond_1

    new-instance p7, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {p7}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    iput-object p7, p1, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    :cond_1
    iget-object p7, p1, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    const/4 v0, 0x0

    iput-boolean v0, p7, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->hide_read_marks:Z

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p7, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda5;

    move-object v0, p7

    move-object v1, p5

    move-object v2, p6

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1, p7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSheet$8(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz p0, :cond_0

    const-string p0, "lastseen"

    goto :goto_0

    :cond_0
    const-string p0, "readtime"

    :goto_0
    invoke-direct {v0, p0}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private request()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->type:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->edit_date:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPmEditedDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->fwd_date:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPmFwdDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;->msg_id:I

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static showSheet(Landroid/content/Context;IJZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 32

    move-object/from16 v8, p0

    move/from16 v9, p4

    move-object/from16 v10, p7

    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v13

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v14, v1, v12, v0, v12}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz v9, :cond_0

    sget v1, Lorg/telegram/messenger/R$raw;->large_lastseen:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->large_readtime:I

    :goto_0
    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v16, 0x50

    const/16 v17, 0x50

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x10

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v0, v15, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenHeader1:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadHeader1:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0xc

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x1

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v15, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v1, 0x0

    cmp-long v16, p2, v1

    if-lez v16, :cond_2

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_2
    const-string v1, ""

    goto :goto_2

    :goto_3
    if-eqz v9, :cond_4

    if-eqz v13, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenText1Locked:I

    goto :goto_4

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenText1:I

    goto :goto_4

    :cond_4
    if-eqz v13, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadText1Locked:I

    goto :goto_4

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadText1:I

    :goto_4
    new-array v2, v15, [Ljava/lang/Object;

    aput-object v16, v2, v12

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v22, 0x20

    const/16 v23, 0x13

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v21, 0x9

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v8, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v9, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->PremiumLastSeenButton1:I

    goto :goto_5

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->PremiumReadButton1:I

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v0, 0x30

    invoke-static {v3, v0, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda0;

    move-object v0, v3

    move-object v1, v2

    move-object v12, v2

    move/from16 v2, p4

    move-object v15, v3

    move/from16 v3, p1

    move-object v4, v11

    move-object/from16 v19, v11

    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v5, p6

    move v11, v6

    move-object/from16 v6, p0

    const/16 v9, 0x11

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v13, :cond_a

    new-instance v0, Lorg/telegram/ui/Components/MessagePrivateSeenView$1;

    invoke-direct {v0, v8, v10}, Lorg/telegram/ui/Components/MessagePrivateSeenView$1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlignment(Landroid/text/Layout$Alignment;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PremiumOr:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/16 v30, 0xc

    const/16 v31, 0x11

    const/16 v25, 0x10e

    const/16 v26, -0x2

    const/16 v27, 0x1

    const/16 v28, 0xc

    const/16 v29, 0x11

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v1, p4

    const/16 v2, 0x11

    if-eqz v1, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->PremiumLastSeenHeader2:I

    goto :goto_6

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->PremiumReadHeader2:I

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v30, 0xc

    const/16 v31, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x1

    const/16 v28, 0xc

    const/16 v29, 0x0

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v1, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->PremiumLastSeenText2:I

    goto :goto_7

    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->PremiumReadText2:I

    :goto_7
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v16, v4, v2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v25, 0x20

    const/16 v26, 0x13

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x1

    const/16 v23, 0x20

    const/16 v24, 0x9

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v2, 0x1

    invoke-direct {v0, v8, v2, v10}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda1;

    move-object/from16 v3, p5

    move-object/from16 v4, v19

    invoke-direct {v2, v1, v4, v3}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda1;-><init>(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_9

    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenButton2:I

    goto :goto_8

    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadButton2:I

    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/16 v5, 0x30

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 p0, v3

    move/from16 p1, v5

    move/from16 p2, v6

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v1

    move/from16 p6, v2

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_a
    move-object/from16 v4, v19

    :goto_9
    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iput v8, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    iget v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->type:I

    const/high16 v8, 0x42400000    # 48.0f

    if-nez v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/high16 v11, 0x43100000    # 144.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PmReadUnknown:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lorg/telegram/messenger/R$string;->PmRead:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$string;->PmReadShowWhen:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PmReadTodayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v14, v15, v2

    invoke-static {v13, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    iget v11, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageDiff:I

    const v12, 0x15180

    if-le v11, v12, :cond_0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PmReadYesterdayAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v14, v15, v2

    invoke-static {v13, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float/2addr v11, v12

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    :cond_0
    iget v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageDiff:I

    const v11, 0x2a300

    if-le v7, v11, :cond_2

    iget v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$string;->PmReadDateTimeAt:I

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/LocaleController;->getFormatterDayMonth()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v15

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v8}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    new-array v15, v1, [Ljava/lang/Object;

    aput-object v14, v15, v2

    aput-object v8, v15, v3

    invoke-static {v13, v15}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    add-float/2addr v11, v8

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/LocaleController;->getFormatterYear()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v12

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v14}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v12, v1, v2

    aput-object v9, v1, v3

    invoke-static {v13, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_0
    iput v1, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    goto :goto_1

    :cond_1
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    :cond_3
    int-to-float v2, v5

    iget v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    const/high16 v2, -0x80000000

    if-ne v6, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_3

    :cond_5
    :goto_2
    float-to-int v5, v3

    :goto_3
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v2, p2

    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
