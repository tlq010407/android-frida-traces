.class public Lorg/telegram/ui/ActionBar/BottomSheetTabs;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;,
        Lorg/telegram/ui/ActionBar/BottomSheetTabs$ClipTools;
    }
.end annotation


# static fields
.field public static final tabDrawables:Ljava/util/HashMap;

.field public static final tabs:Ljava/util/HashMap;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private final actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundColor:I

.field private backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private bottomTabsAnimator:Landroid/animation/ValueAnimator;

.field public bottomTabsHeight:I

.field public bottomTabsProgress:F

.field private closeRippleHit:Z

.field public currentAccount:I

.field public doNotDismiss:Z

.field public drawTabs:Z

.field private hit:Z

.field private final invalidateListeners:Ljava/util/HashSet;

.field private final rect:Landroid/graphics/RectF;

.field private final relayoutListeners:Ljava/util/HashSet;

.field private tabColor:I

.field private tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private tabIsDark:Z


# direct methods
.method public static synthetic $r8$lambda$6r2txJ0Yr4DK9EpwLcLpfe0Mu_M(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$touchEvent$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eS6onxPmrS2KyNhr0fENWTMjseo(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$5(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kds1RKsT7D42Om7XAx69ikKtHJA([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$3([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q_3532qoR80viwZuASU_LF6yn6Q(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$openTab$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgkkl5LsHmsPhNQPla-gMItkXc0(Lorg/telegram/ui/ActionBar/BottomSheetTabs;[ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$2([ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3dh2AB0YwSRv4-W_LOo3bJIbuQ(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$openTab$0(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uun15od05WAGlNuyuHx4pmCCPKw(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$updateVisibility$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wY--mzJHTOpTZmii2flzYplpdWs([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->lambda$removeTab$4([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDrawables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    new-instance v7, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, v7

    move-object v1, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setNavigationBarColor(I)V

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    return-void
.end method

.method static synthetic access$100()Landroid/text/TextPaint;
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    return-object p0
.end method

.method private static getTextPaint()Landroid/text/TextPaint;
    .locals 2

    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method private synthetic lambda$openTab$0(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/telegram/ui/bots/BotWebViewSheet;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setParentActivity(Landroid/app/Activity;)V

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->restoreState(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    invoke-virtual {v0}, Lorg/telegram/ui/bots/BotWebViewSheet;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$openTab$1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    return-void
.end method

.method private synthetic lambda$removeTab$2([ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p5, 0x0

    const/4 p6, 0x1

    aput-boolean p6, p1, p5

    invoke-virtual {p0, p2, p6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    aget-object p1, p4, p5

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$removeTab$3([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p3, 0x1

    const/4 p4, 0x0

    aput-boolean p3, p0, p4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    aget-object p0, p2, p4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$removeTab$4([ZLorg/telegram/messenger/Utilities$Callback;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    aget-boolean v0, p0, p2

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-boolean p1, p0, p2

    :cond_0
    return-void
.end method

.method private synthetic lambda$removeTab$5(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v1, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$touchEvent$6(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$updateVisibility$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateMultipleTitle()V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_0

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->access$000(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->getTitle()Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v8, v9, v4

    const-string v8, "BotMoreTabs"

    invoke-static {v8, v7, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setOverrideTitle(Ljava/lang/CharSequence;)V

    :goto_1
    move-object v6, v7

    goto :goto_2

    :cond_0
    iget-object v7, v6, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setOverrideTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :goto_2
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTabs:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrTabs:I

    if-nez v6, :cond_3

    move-object v6, v2

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v4

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :goto_4
    return-void
.end method

.method public static urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public click()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    sget-object v2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->stopAnimations()V

    :cond_2
    if-eq v1, v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;->openTabsView()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    :goto_2
    return-void
.end method

.method public closeAttachedSheets()Z
    .locals 4

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabsOverlay()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay;

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->sheetsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v6

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getAlpha()F

    move-result v11

    cmpg-float v8, v11, v2

    if-gtz v8, :cond_1

    goto :goto_2

    :cond_1
    const v8, 0x3ffeb852    # 1.99f

    cmpl-float v8, v6, v8

    if-lez v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, v8, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v7, v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setBackgroundColor(IZ)V

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v10, v6

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public findTabDrawable(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpandedHeight()I
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x42880000    # 68.0f

    goto :goto_0
.end method

.method public getHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    float-to-int p1, p1

    return p1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    return p1
.end method

.method public getTabBounds(Landroid/graphics/RectF;F)V
    .locals 6

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f733333    # 0.95f

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    mul-float v2, v2, p2

    sub-float v5, v0, v2

    iput v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v4

    mul-float v3, v3, p2

    sub-float p2, v1, v3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getTabDrawables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;",
            ">;"
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTabDrawables(I)Ljava/util/ArrayList;
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDrawables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;",
            ">;"
        }
    .end annotation

    .line 0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTabs(I)Ljava/util/ArrayList;
    .locals 2

    .line 0
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public listen(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->touchEvent(IFF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V
    .locals 7

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v4, v0

    check-cast v4, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getChatActivityEnterView()Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(ZZ)Z

    :cond_1
    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getSheetFragment()Lorg/telegram/ui/EmptyBaseFragment;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->checkSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->addSheet(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;)V

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer$Sheet;->reset()V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-object v4, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->attachInternal(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->animateOpen(ZZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeAttachedSheets()Z

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    invoke-interface {v2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    iget-boolean v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->needsContext:Z

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v4, v4, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->doNotDismiss:Z

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v1, p1, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 v2, 0xdc

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public pushTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;-><init>(Landroid/view/View;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->animatedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v4, :cond_0

    invoke-static {p1, v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->access$002(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;I)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object v2
.end method

.method public removeAll()Z
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    const/4 v4, -0x1

    iput v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 12

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->confirmDismiss:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget v2, v2, Lorg/telegram/ui/bots/WebViewRequestProps;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    iget-wide v3, v3, Lorg/telegram/ui/bots/WebViewRequestProps;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-array v9, v1, [Z

    aput-boolean v0, v9, v0

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda2;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move-object v7, p2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;[ZLorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v10, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9, p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda3;-><init>([ZLorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    aput-object p1, v1, v0

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;

    invoke-direct {v2, v9, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda4;-><init>([ZLorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    aget-object p1, v1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    aget-object p1, v1, v0

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z
    .locals 3

    .line 0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->destroy()V

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->tab:Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->index:I

    if-ltz v2, :cond_1

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->access$002(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;I)I

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateMultipleTitle()V

    new-instance p3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    const-wide/16 p1, 0x140

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z
    .locals 1

    .line 0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    move-result p1

    return p1
.end method

.method public setCurrentAccount(I)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->updateVisibility(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setNavigationBarColor(IZ)V

    return-void
.end method

.method public setNavigationBarColor(IZ)V
    .locals 5

    .line 0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    const/4 v3, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const v0, 0x3da3d70a    # 0.08f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f400000    # 0.75f

    :goto_1
    const/4 v4, -0x1

    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    if-nez p2, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->backgroundColor:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public setupTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabDarkAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabIsDark:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setExpandProgress(F)V

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->setBackgroundColor(IZ)V

    return-void
.end method

.method public stopListening(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->invalidateListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public touchEvent(IFF)Z
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabDrawables()Ljava/util/ArrayList;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->drawTabs:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->findTabDrawable(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->getPosition()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabBounds(Landroid/graphics/RectF;F)V

    const/4 v5, 0x2

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eq p1, v3, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    if-eqz p2, :cond_3

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->click()V

    goto :goto_1

    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p2, :cond_4

    if-ne p1, v3, :cond_4

    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_4
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array p2, v4, [I

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_5

    :cond_5
    :goto_2
    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, p2, v6

    float-to-int v6, v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, p3, v0

    float-to-int v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    iget-object p1, v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p2, :cond_7

    new-array p2, v5, [I

    const p3, 0x10100a7

    aput p3, p2, v4

    const p3, 0x101009e

    aput p3, p2, v3

    goto :goto_4

    :cond_7
    new-array p2, v4, [I

    :goto_4
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    :goto_5
    const/4 p1, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_b

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v2, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;

    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BottomSheetTabs$TabDrawable;->closeRipple:Landroid/graphics/drawable/Drawable;

    new-array p3, v4, [I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->hit:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->closeRippleHit:Z

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :cond_d
    :goto_7
    return v3
.end method

.method public tryRemoveTabWith(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v3, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->removeTab(ILorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;Z)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public tryReopenTab(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 7

    .line 0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v5, v5, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    if-eqz v6, :cond_3

    check-cast v5, Lorg/telegram/ui/ArticleViewer$CachedWeb;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->webView:Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    if-nez v5, :cond_1

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    if-eqz v6, :cond_1

    aget-object v6, v6, v2

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$PageLayout;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->getOpenURL()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 1

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object p1

    return-object p1
.end method

.method public tryReopenTab(Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 9

    .line 0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getTabs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->articleViewer:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public tryReopenTab(Lorg/telegram/ui/bots/WebViewRequestProps;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;
    .locals 5

    .line 0
    sget-object v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tabs:Ljava/util/HashMap;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->currentAccount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;->props:Lorg/telegram/ui/bots/WebViewRequestProps;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/bots/WebViewRequestProps;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->openTab(Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;)V

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public updateCurrentAccount()V
    .locals 1

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->setCurrentAccount(I)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getExpandedHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->getExpandedHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->relayoutListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabs;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsHeight:I

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->bottomTabsProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    const/4 p1, 0x1

    return p1
.end method
