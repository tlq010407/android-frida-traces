.class public Lorg/telegram/ui/Stories/StealthModeAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;,
        Lorg/telegram/ui/Stories/StealthModeAlert$Listener;
    }
.end annotation


# instance fields
.field private final button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

.field private listener:Lorg/telegram/ui/Stories/StealthModeAlert$Listener;

.field private stealthModeIsActive:Z

.field private type:I

.field updateButtonRunnuble:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-5J2ZA_uyc3MprowZnuPODGS-G0(Lorg/telegram/ui/Stories/StealthModeAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StealthModeAlert;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8RCZlFLwVhO4hPcjt6fZFCu-1jw()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Stories/StealthModeAlert;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$V1dBXsEinN1XUmgboDP4oTZUztE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StealthModeAlert;->lambda$new$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r56AkUCrAmR0RGvtKSeMJuasias(Lorg/telegram/ui/Stories/StealthModeAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StealthModeAlert;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXxxgP9lGruGxTSbZ_J7X3t4Me4(Lorg/telegram/ui/Stories/StealthModeAlert;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/StealthModeAlert;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v5, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/StealthModeAlert;->updateButtonRunnuble:Ljava/lang/Runnable;

    iput v2, v0, Lorg/telegram/ui/Stories/StealthModeAlert;->type:I

    new-instance v5, Lorg/telegram/ui/Stories/StealthModeAlert$1;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    move/from16 v7, p2

    invoke-direct {v5, v0, v6, v7}, Lorg/telegram/ui/Stories/StealthModeAlert$1;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;Landroid/content/Context;F)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lorg/telegram/messenger/R$drawable;->large_stealth:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v8, 0x50

    const/high16 v9, 0x42a00000    # 80.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, -0x1

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const/high16 v12, 0x42e80000    # 116.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget v9, Lorg/telegram/messenger/R$string;->StealthModeTitle:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, -0x2

    invoke-static {v9, v9, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xe

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlignment(Landroid/text/Layout$Alignment;)V

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setMaxLines(I)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v9

    if-eqz v9, :cond_0

    sget v9, Lorg/telegram/messenger/R$string;->StealthModeHint:I

    :goto_0
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_0
    sget v9, Lorg/telegram/messenger/R$string;->StealthModePremiumHint:I

    goto :goto_0

    :goto_1
    const/16 v15, 0x24

    const/16 v16, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/16 v13, 0x24

    const/16 v14, 0xa

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;Landroid/content/Context;)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->imageView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_stealth_5min:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->HideRecentViews:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->description:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->HideRecentViewsDescription:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x14

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;Landroid/content/Context;)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->imageView:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_stealth_25min:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->textView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->HideNextViews:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v8, Lorg/telegram/ui/Stories/StealthModeAlert$ItemCell;->description:Landroid/widget/TextView;

    sget v10, Lorg/telegram/messenger/R$string;->HideNextViewsDescription:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0xa

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-direct {v8, v1, v9, v7, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iput-boolean v4, v8, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawGradient:Z

    iget-object v1, v8, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setSplitByWords(Z)V

    sget v1, Lorg/telegram/messenger/R$raw;->unlock_icon:I

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    iget v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-boolean v9, v7, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-nez v9, :cond_1

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setIcon(I)V

    sget v1, Lorg/telegram/messenger/R$string;->UnlockStealthMode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;)V

    invoke-virtual {v8, v1, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_1
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StealthModeAlert;->updateButton(Z)V

    :goto_2
    const/16 v14, 0xe

    const/16 v15, 0x10

    const/4 v9, -0x1

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/16 v12, 0xe

    const/16 v13, 0x18

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v7, v2, v3}, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StealthModeAlert;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/StealthModeAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/StealthModeAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p0, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    const/4 p4, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p3, 0xe

    invoke-direct {p2, p1, p3, p4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->stealthModeIsActive:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->listener:Lorg/telegram/ui/Stories/StealthModeAlert$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p4}, Lorg/telegram/ui/Stories/StealthModeAlert$Listener;->onButtonClicked(Z)V

    :cond_1
    return-void

    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getStealthMode()Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->cooldown_until_date:I

    if-le v2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->stealthModeIsActive:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->listener:Lorg/telegram/ui/Stories/StealthModeAlert$Listener;

    if-eqz p1, :cond_7

    invoke-interface {p1, p4}, Lorg/telegram/ui/Stories/StealthModeAlert$Listener;->onButtonClicked(Z)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p1, :cond_7

    sget p2, Lorg/telegram/messenger/R$string;->StealthModeCooldownHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    :cond_5
    :goto_0
    new-instance p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_activateStealthMode;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_activateStealthMode;-><init>()V

    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_activateStealthMode;->future:Z

    iput-boolean v1, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_activateStealthMode;->past:Z

    new-instance p4, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;-><init>()V

    iget v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    const/4 v2, 0x3

    or-int/2addr v0, v2

    iput v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->flags:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->stealthModeCooldown:I

    add-int/2addr v0, v3

    iput v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->cooldown_until_date:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->stealthModeFuture:I

    add-int/2addr v0, v3

    iput v0, p4, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/StoriesController;->setStealthMode(Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda3;

    invoke-direct {p4}, Lorg/telegram/ui/Stories/StealthModeAlert$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-nez p2, :cond_6

    invoke-static {}, Lorg/telegram/ui/Stories/StealthModeAlert;->showStealthModeEnabledBulletin()V

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->listener:Lorg/telegram/ui/Stories/StealthModeAlert$Listener;

    if-eqz p1, :cond_7

    invoke-interface {p1, v1}, Lorg/telegram/ui/Stories/StealthModeAlert$Listener;->onButtonClicked(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/StealthModeAlert;->updateButton(Z)V

    :cond_0
    return-void
.end method

.method public static showStealthModeEnabledBulletin()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth2:I

    sget v2, Lorg/telegram/messenger/R$string;->StealthModeOn:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->StealthModeOnHint:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleLargeBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void
.end method

.method private updateButton(Z)V
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getStealthMode()Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iget v4, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->active_until_date:I

    if-ge v3, v4, :cond_1

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->stealthModeIsActive:Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->StealthModeIsActive:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz v1, :cond_3

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iget v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storiesStealthMode;->cooldown_until_date:I

    if-le v3, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-long v3, v1

    const-wide/16 v5, 0x3c

    rem-long v7, v3, v5

    long-to-int v1, v7

    div-long/2addr v3, v5

    rem-long v7, v3, v5

    long-to-int v8, v7

    div-long/2addr v3, v5

    long-to-int v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, "%02d"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v0

    const-string v4, ":%02d"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v4, Lorg/telegram/messenger/R$string;->AvailableIn:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const-string v0, "AvailableIn"

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, p1}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->updateButtonRunnuble:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->updateButtonRunnuble:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->type:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->EnableStealthMode:I

    goto/16 :goto_0

    :cond_4
    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->button:Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->EnableStealthModeAndOpenStory:I

    goto/16 :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public setListener(Lorg/telegram/ui/Stories/StealthModeAlert$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StealthModeAlert;->listener:Lorg/telegram/ui/Stories/StealthModeAlert$Listener;

    return-void
.end method
