.class public Lorg/telegram/ui/Components/ChatThemeBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;,
        Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

.field private final applyButton:Landroid/view/View;

.field private applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private final backButtonView:Landroid/widget/ImageView;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private cancelOrResetTextView:Landroid/widget/TextView;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private final chatActivity:Lorg/telegram/ui/ChatActivity;

.field public chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private chatAttachButton:Landroid/widget/FrameLayout;

.field private chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private checkedBoostsLevel:Z

.field private checkingBoostsLevel:Z

.field private chooseBackgroundTextView:Landroid/widget/TextView;

.field private currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

.field private final darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private final darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

.field private dataLoaded:Z

.field private forceDark:Z

.field hintView:Lorg/telegram/ui/Components/HintView;

.field private isApplyClicked:Z

.field private isLightDarkChangeAnimation:Z

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

.field private final originalIsDark:Z

.field private final originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private prevSelectedPosition:I

.field private final progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private final scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

.field private selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

.field private subTextTranslation:F

.field private subTextTranslationAnimator:Landroid/animation/ValueAnimator;

.field private final themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field private themeHintTextView:Landroid/widget/TextView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-dXNZvUoVpVra5VxgGvOmkPnBkc(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$openGalleryForBackground$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1A4J7-pgvtGEK5NCdDZw0OknhfQ(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$close$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$1X9t_7F6S7ojgnp_U3TnK5u9PxI()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$7W-LeWrz1-In8rz9unViTjkua6A(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$7fzwk--r0CXJFPPD1f3zgVfoIZQ(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$didReceivedNotification$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$BzU7HMfKWhWSzXH-4IhaIO8BoFQ(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$Csf6qgt7rBocir-nr8-gry407kw(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$applySelectedTheme$14(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GRceWwo3jl8CmnMU6YJUQtD5Wvk(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$setupLightDarkTheme$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHqv7HmtJqbjIw7sTqywEYXOfKw(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RFb0nEn7DfMXYTM_6-1A_9mvXJo()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$StcDJybJJlXoRnChyeI_lzhJlDU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$setupLightDarkTheme$11(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VSNpfeh8X00913ALN31qYPFBfC0(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$onCreate$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$atcLjbl456MPgKHJ1pkwk_X7Cqc(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eyP_79KChicg93OlXkcwMgOgRvA(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lO4gFfvUFEab9gIpZVC7vqEHwTY(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$applySelectedTheme$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$lYtczirnquN-pLs-4lIQDL-JFpg(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKhj5Adx0wiNJhb9mXAgxJAwgCE(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$checkBoostsLevel$5(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mxbQdzu7bylrVQ84qd3MhFXFm_c(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$updateApplySubTextTranslation$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-2-yvP2zmRVGxDDpwL7FMP72qA(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$new$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6i4y-1dwJluTUuFjElOQXXn_jM(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$vN2CnaXwUk-AXFHHEW83B5S3sXA(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$close$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBNDVR_wWRduiXtpfeo-mDPKpTc(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lambda$showAsSheet$17()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, -0x1

    iput v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkingBoostsLevel:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkedBoostsLevel:Z

    const/4 v6, 0x0

    iput v6, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    new-instance v7, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v7, v8, v2, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;-><init>(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v2, v8, :cond_1

    iput v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;IZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v3

    float-to-double v8, v3

    const-wide v10, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v3, v8, v10

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    :goto_1
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget v3, Lorg/telegram/messenger/R$string;->SelectTheme:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v2, v8, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonView:Landroid/widget/ImageView;

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v10, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v10, v5}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/high16 v16, 0x42780000    # 62.0f

    const/high16 v17, 0x41400000    # 12.0f

    const/16 v11, 0x2c

    const/high16 v12, 0x42300000    # 44.0f

    const v13, 0x800033

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v15, -0x40000000    # -2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/high16 v15, 0x42780000    # 62.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const v12, 0x800033

    const/high16 v13, 0x42300000    # 44.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    new-instance v10, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v12, Lorg/telegram/messenger/R$raw;->sun_outline:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v10

    move-object/from16 v18, v14

    move v14, v15

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v11

    xor-int/2addr v11, v4

    iput-boolean v11, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v11

    invoke-direct {v0, v11, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setForceDark(ZZ)V

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    invoke-virtual {v10, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    new-instance v11, Landroid/graphics/PorterDuffColorFilter;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v8, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v8, Lorg/telegram/ui/Components/ChatThemeBottomSheet$1;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v0, v11}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v10, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/high16 v16, 0x40e00000    # 7.0f

    const/16 v17, 0x0

    const/16 v11, 0x2c

    const/high16 v12, 0x42300000    # 44.0f

    const v13, 0x800035

    const/4 v14, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$2;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    new-instance v8, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v8, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelection(Z)V

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v8, v5}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v8, v7, v5, v10, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    new-instance v7, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v10, v11}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v10, 0xe

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42d00000    # 104.0f

    const v13, 0x800003

    const/high16 v15, 0x42300000    # 44.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x42d00000    # 104.0f

    const v12, 0x800003

    const/4 v13, 0x0

    const/high16 v14, 0x42300000    # 44.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-static {v8, v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v8, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    const v10, 0x800003

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x43220000    # 162.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->ChooseBackgroundFromGallery:I

    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->ChooseANewWallpaper:I

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v2, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    new-instance v10, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$4;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41800000    # 16.0f

    const/4 v11, -0x1

    const/high16 v12, 0x42400000    # 48.0f

    const v13, 0x800003

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x43220000    # 162.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v2, v10, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean v5, v2, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v24, 0x41800000    # 16.0f

    const/high16 v25, 0x41800000    # 16.0f

    const/16 v19, -0x1

    const/high16 v20, 0x42400000    # 48.0f

    const v21, 0x800003

    const/high16 v22, 0x41800000    # 16.0f

    const/high16 v23, 0x43220000    # 162.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean v5, v2, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v15, 0x41800000    # 16.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const v12, 0x800003

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v14, 0x43220000    # 162.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v2, :cond_5

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->RestToDefaultBackground:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x41400000    # 12.0f

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    const v12, 0x800003

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v14, 0x43560000    # 214.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v14, v18

    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatThemeApplyHint:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v14, v3, v5

    const-string v6, "ChatThemeApplyHint"

    invoke-static {v6, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41800000    # 16.0f

    const/high16 v12, 0x41400000    # 12.0f

    const/4 v6, -0x1

    const/high16 v7, 0x42400000    # 48.0f

    const v8, 0x800003

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x43560000    # 214.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateButtonColors()V

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateState(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->openGalleryForBackground()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setItemsAnimationProgress(F)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateButtonColors()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/ChatThemeBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->showAsSheet(Lorg/telegram/ui/ThemePreviewActivity;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->scroller:Landroidx/recyclerview/widget/LinearSmoothScroller;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onDataLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onAnimationStart()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method private applySelectedTheme()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkingBoostsLevel:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v2, :cond_1

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    new-instance v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v1}, Lorg/telegram/messenger/ChatThemeController;->clearWallpaper(JZ)V

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3, v0}, Lorg/telegram/messenger/ChatThemeController;->setDialogTheme(JLjava/lang/String;Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v5

    :goto_1
    iget-boolean v6, v2, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v2, v5, v0, v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v0, v6}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v5, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "\u274c"

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v3, :cond_6

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    move-object v10, v3

    goto :goto_4

    :cond_6
    move-object v10, v4

    :goto_4
    new-instance v3, Lorg/telegram/ui/Components/StickerSetBulletinLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickerSetBulletinLayout;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v6, v3, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_7

    iget-object v5, v3, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->ThemeAlsoDisabledForHint:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "ThemeAlsoDisabledForHint"

    invoke-static {v1, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    iget-object v5, v3, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->ThemeAlsoAppliedForHint:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "ThemeAlsoAppliedForHint"

    invoke-static {v1, v6, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    iget-object v0, v3, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/16 v1, 0xabe

    invoke-static {v0, v3, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v4

    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_9
    return-void
.end method

.method private checkBoostsLevel()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkingBoostsLevel:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkedBoostsLevel:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkingBoostsLevel:Z

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fixColorsAfterAnotherWindow()V
    .locals 8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->disallowChangeServiceMessageColor:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v1, v3, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;Z)V

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->updateColors(Z)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkColors()V

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iput v2, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    :goto_5
    return-void
.end method

.method private hasChanges()Z
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u274c"

    if-eqz v2, :cond_2

    move-object v0, v3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic lambda$applySelectedTheme$13()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$applySelectedTheme$14(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v4, 0x16

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$checkBoostsLevel$5(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkedBoostsLevel:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateState(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkingBoostsLevel:Z

    return-void
.end method

.method private synthetic lambda$close$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySelectedTheme()V

    return-void
.end method

.method private synthetic lambda$close$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$10()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetToPrimaryState(Z)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateState(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setupLightDarkTheme(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->previewSelectedTheme()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$3;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$3;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    if-eq v1, p1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->cancelAnimation()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-nez p2, :cond_3

    check-cast p1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->playEmojiAnimation()V

    :cond_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateState(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySelectedTheme()V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V
    .locals 2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/messenger/ChatThemeController;->clearWallpaper(JZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$7()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    return-void
.end method

.method private synthetic lambda$openGalleryForBackground$15(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChooseBackgroundFromGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->openColorsLayout()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->colorsLayout:Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertColorsLayout;->updateColors(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SetColorAsBackground:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setupLightDarkTheme$11(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setupLightDarkTheme$12(Z)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setForceDark(ZZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v4, v3, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v4, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v2, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput p1, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_3
    return-void
.end method

.method private static synthetic lambda$showAsSheet$16()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void
.end method

.method private synthetic lambda$showAsSheet$17()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->fixColorsAfterAnotherWindow()V

    return-void
.end method

.method private synthetic lambda$showAsSheet$18()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method private static synthetic lambda$showAsSheet$19()V
    .locals 2

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void
.end method

.method private synthetic lambda$showAsSheet$20()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->fixColorsAfterAnotherWindow()V

    return-void
.end method

.method private synthetic lambda$showAsSheet$21()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method private synthetic lambda$updateApplySubTextTranslation$6(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private onAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    return-void
.end method

.method private onAnimationStart()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iput v2, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->setItemsAnimationProgress(F)V

    :cond_1
    return-void
.end method

.method private onDataLoaded(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dataLoaded:Z

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/EmojiThemes;

    new-instance v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iput v4, v5, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->resetToPrimaryState(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateState(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private openGalleryForBackground()V
    .locals 8

    .line 0
    new-instance v7, Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    iput-boolean v0, v7, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    sget v1, Lorg/telegram/messenger/R$string;->ChooseBackground:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupPhotoPicker(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$13;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$13;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->SetColorAsBackground:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/16 v6, 0x4c

    invoke-static {v2, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachButton:Landroid/widget/FrameLayout;

    const/16 v2, 0x50

    invoke-static {v4, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static openGalleryForBackground(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 12

    .line 0
    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    sget v0, Lorg/telegram/messenger/R$string;->ChooseBackground:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setupPhotoPicker(Ljava/lang/String;)V

    new-instance v11, Lorg/telegram/ui/Components/ChatThemeBottomSheet$11;

    move-object v0, v11

    move-object v1, v9

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-wide v5, p2

    move-object/from16 v7, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;JLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setMaxSelectedPhotos(IZ)V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->init()V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatAttachAlert;->show()V

    return-void
.end method

.method private previewSelectedTheme()V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isLightDarkChangeAnimation:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iput-boolean v0, v1, Lorg/telegram/ui/ChatActivity;->forceDisallowApplyWallpeper:Z

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v3, v2, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v4, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private resetToPrimaryState(Z)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-eq v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v4, :cond_6

    iput v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->prevSelectedPosition:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setSelectedItem(I)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->previewSelectedTheme()V

    return-void
.end method

.method private setForceDark(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method private setItemsAnimationProgress(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput p1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->animationProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 0
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda16;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onOpenAnimationFinished:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onPreFinished:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onDismiss:Ljava/lang/Runnable;

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->occupyNavigationBar:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private showAsSheet(Lorg/telegram/ui/ThemePreviewActivity;)V
    .locals 3

    .line 0
    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$14;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ThemePreviewActivity;->setOnSwitchDayNightDelegate(Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;)V

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda19;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onOpenAnimationFinished:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onPreFinished:Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->onDismiss:Ljava/lang/Runnable;

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->occupyNavigationBar:Z

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private updateApplySubTextTranslation(ZZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslationAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput v0, v1, p2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$5;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 p2, 0x40e00000    # 7.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    iget v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->subTextTranslation:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private updateButtonColors()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x4c

    const/high16 v3, 0x40c00000    # 6.0f

    if-eqz v0, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-static {v5, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v4, v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v5, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-static {v4, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateState(Z)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->checkBoostsLevel()V

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dataLoaded:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-static {v0, v5, v2, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v0, v3, v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v1, v5, v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v1, :cond_2

    iget-boolean v6, v1, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v6, :cond_2

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/EmojiThemes;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ChatResetTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v6, Lorg/telegram/messenger/R$string;->ChatApplyTheme:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    if-eqz v0, :cond_4

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    if-ge v0, v1, :cond_4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "l"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez v1, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->lockSpan:Lorg/telegram/ui/Components/ColoredImageSpan;

    const/16 v6, 0x21

    invoke-virtual {v0, v1, v5, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->channelWallpaperLevelMin:I

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "ReactionLevelRequiredBtn"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v7, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->updateApplySubTextTranslation(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-static {v0, v3, v2, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v3, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, 0x0

    const v10, 0x3f333333    # 0.7f

    const v8, 0x3f666666    # 0.9f

    move v11, p1

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZFZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-static {v0, v3, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->backButtonDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chooseBackgroundTextView:Landroid/widget/TextView;

    invoke-static {v0, v3, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->cancelOrResetTextView:Landroid/widget/TextView;

    invoke-static {v0, v3, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    invoke-static {v0, v5, v2, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applySubTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeHintTextView:Landroid/widget/TextView;

    invoke-static {v0, v5, v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZZ)V

    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogApply:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    sget v1, Lorg/telegram/messenger/R$string;->ChatThemeSaveDialogDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->dismiss()V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 6

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->forceDisallowApplyWallpeper:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->currentWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v5, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    if-eq v0, v2, :cond_8

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    if-ne v0, v2, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "themeconfig"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "lastDayTheme"

    const-string v3, "Blue"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v2

    :cond_4
    :goto_0
    const-string v2, "lastDarkTheme"

    const-string v4, "Dark Blue"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v0

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    if-eqz v0, :cond_7

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->originalIsDark:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZ)V

    :cond_8
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v9, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$7;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/ChatActivity;->forceDisallowRedrawThemeDescriptions:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->overlayFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ThemePreviewActivity;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemePreviewActivity;->getThemeDescriptionsInternal()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v11

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-array v8, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v8, v1

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, v12

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->titleView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    aput-object v5, v2, v1

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v24, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v15, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->applyButton:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v4, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_0

    :cond_2
    return-object v11
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->close()V

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hasChanges()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onContainerTranslationYChanged(F)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperThumbs(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ChatThemeController;->preloadAllWallpaperImages(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->isApplyClicked:Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCachedThemes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->onDataLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$6;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez p1, :cond_3

    sget p1, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->updateDayNightThemeSwitchHintCount(I)V

    new-instance p1, Lorg/telegram/ui/Components/HintView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {p1, v0, v3, v2}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/HintView;->setShowingDuration(J)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setBottomOffset(I)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->forceDark:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeDaySwitchTooltip:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChatThemeDaySwitchTooltip"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatThemeNightSwitchTooltip:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChatThemeNightSwitchTooltip"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->hintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public setupLightDarkTheme(Z)V
    .locals 18

    move-object/from16 v13, p0

    const/4 v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v15, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-array v1, v14, [I

    iget-object v2, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v11, v2

    aget v0, v1, v0

    int-to-float v7, v0

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v5, v11, v0

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->darkThemeView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v6, v7, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v16, v0, v1

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v9, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$8;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v14, v3

    move/from16 v3, p1

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$8;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Landroid/content/Context;ZLandroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v14, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput v15, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$9;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$9;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$10;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v13, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda10;

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
