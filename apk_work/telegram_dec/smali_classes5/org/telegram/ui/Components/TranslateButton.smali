.class public abstract Lorg/telegram/ui/Components/TranslateButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private accusative:[Z

.field private final currentAccount:I

.field private final dialogId:J

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private menuView:Landroid/widget/ImageView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final translateDrawable:Landroid/graphics/drawable/Drawable;

.field public final translateIcon:Landroid/text/SpannableString;


# direct methods
.method public static synthetic $r8$lambda$6LX9Qf6WOE6yFMGgDJUsymfSuOI(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$7(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9WYClbIhu9F3rWJk9OMYcZI_WI(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GU0TF2azIfM2DxFzHnMPV0PnyJE(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQQy-hL7OcpQtlcZfjrU45JyzCY(Lorg/telegram/ui/Components/TranslateButton;IJLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$1(IJLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QmRc9CaaX-zxQVlg7zh0Xti05G0(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$8(Lorg/telegram/messenger/TranslateController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rrv6LxcXM6-Zptl8rmLUbFMPD6M(Lorg/telegram/ui/Components/TranslateButton;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$cr0vTwtiEdypdtcExXyflrTb08U(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$5(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$etgc7kPk_JiQz-NNOGQ2ZSPsnFg(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpICCxs7w3r3eex_J-3j-sxqXMI(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nqhaFavq23PTCywl0qwNnQYURQ0(Lorg/telegram/ui/Components/TranslateButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    iput p2, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    iput-wide p3, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    iput-object p5, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p5, 0x0

    invoke-direct {v2, p1, v0, v0, p5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1c2

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p6, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p6, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p6, v2, p5, v1, p5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p6, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v1, v0

    invoke-virtual {p6, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setIgnoreRTL(Z)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean p5, p6, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    invoke-virtual {p6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    iput-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->translateDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p6, p5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "x"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p6, p5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p6, 0x21

    invoke-virtual {v1, v2, p5, v0, p6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p5, Landroid/widget/ImageView;

    invoke-direct {p5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    sget p5, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance p5, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TranslateButton;IJ)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    const/16 v0, 0x20

    const/high16 v1, 0x42000000    # 32.0f

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateColors()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/TranslateButton;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$1(IJLandroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    neg-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onCloseClick()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onMenuClick()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$onMenuClick$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method private static synthetic lambda$onMenuClick$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$5(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$6()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onMenuClick$7(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x1

    invoke-static {p1, p5}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->toggleLanguage(Ljava/lang/String;Z)Z

    invoke-virtual {p2}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p2, v0, v1, p5}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslate:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    const-string p2, "AddedToDoNotTranslate"

    invoke-static {p2, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslateOther:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    const-string p2, "AddedToDoNotTranslateOther"

    invoke-static {p2, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget p5, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    invoke-virtual {p2, p3, p1, p5, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$8(Lorg/telegram/messenger/TranslateController;)V
    .locals 3

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    return-void
.end method

.method private synthetic lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 4

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 p3, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    iget p3, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChannel:I

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForGroup:I

    goto :goto_0

    :cond_1
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChat:I

    goto :goto_0

    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->Undo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V

    invoke-virtual {v0, v1, p3, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected abstract onButtonClick()V
.end method

.method protected abstract onCloseClick()V
.end method

.method protected onMenuClick()V
    .locals 27

    move-object/from16 v6, p0

    iget v0, v6, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v1, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, -0x2

    invoke-direct {v10, v8, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/Components/TranslateButton$1;-><init>(Lorg/telegram/ui/Components/TranslateButton;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iput-boolean v9, v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v3

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v11, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v9, v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v5, Lorg/telegram/messenger/R$string;->TranslateTo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v4, v5, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    iget-wide v13, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v13, v14}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    new-instance v5, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;

    invoke-direct {v5, v8, v3}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v9, v12, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v4, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v3, 0x1a4

    const/4 v4, -0x1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-wide v0, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v6, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    iget-wide v0, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->getSuggestedLanguages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v11

    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v14, 0x8

    invoke-static {v4, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v12, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x2

    move-object/from16 v21, v15

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v12, v21

    invoke-virtual {v12, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/TranslateController$Language;

    iget-object v13, v12, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_0

    :cond_1
    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    iget-object v9, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x2

    move-object/from16 v21, v15

    move-object/from16 v26, v9

    invoke-direct/range {v21 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object v12, v12, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_3

    new-instance v9, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;

    invoke-direct {v9, v6, v7, v13, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v12, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v9, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v4, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/TranslateController$Language;

    iget-object v11, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    iget-object v15, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x2

    move-object/from16 v21, v13

    move-object/from16 v26, v15

    invoke-direct/range {v21 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v13, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object v9, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v13, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v12, :cond_7

    new-instance v9, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;

    invoke-direct {v9, v6, v7, v11, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v13, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v4, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    iget v0, v6, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v5, :cond_a

    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {v9, v0, v2, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_9

    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguage:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguageOther:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v11, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    :cond_a
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->Hide:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6, v7, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v0, 0xdc

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    invoke-virtual {v10, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v10, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {v10, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    iget-object v1, v6, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateColors()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_addContact:I

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const v3, 0x19ffffff

    and-int/2addr v2, v3

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    and-int/2addr v2, v3

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->translateDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-direct {v2, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public updateText()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v6

    const-string v7, " "

    iget-wide v8, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    if-eqz v6, :cond_1

    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v8, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    sget v9, Lorg/telegram/messenger/R$string;->ShowOriginalButtonLanguage:I

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v4, v10, v3

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v8, v1, v3

    aput-object v7, v1, v2

    aput-object v4, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    sget v8, Lorg/telegram/messenger/R$string;->ShowOriginalButton:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v6, v1, v3

    aput-object v7, v1, v2

    aput-object v8, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v8, v9}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "en"

    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_3

    sget v6, Lorg/telegram/messenger/R$string;->TranslateToButton:I

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    sget v6, Lorg/telegram/messenger/R$string;->TranslateToButtonOther:I

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v8, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v8, v1, v3

    aput-object v7, v1, v2

    aput-object v4, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v5, :cond_4

    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    goto :goto_4

    :cond_5
    :goto_3
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
