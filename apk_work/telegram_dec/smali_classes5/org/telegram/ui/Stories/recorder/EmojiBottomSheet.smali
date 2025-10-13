.class public Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$StoryWidgetsCell;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$NoEmojiView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;
    }
.end annotation


# static fields
.field public static savedPosition:I = 0x1


# instance fields
.field private categoryIndex:I

.field private drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;

.field private final greeting:Z

.field private maxPadding:F

.field private onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback3Return;

.field private onPlusSelected:Ljava/lang/Runnable;

.field private onWidgetSelected:Lorg/telegram/messenger/Utilities$CallbackReturn;

.field private final onlyStickers:Z

.field public final plus:Lorg/telegram/tgnet/TLRPC$Document;

.field private query:Ljava/lang/String;

.field private tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

.field private top:F

.field private final viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

.field private wasKeyboardVisible:Z

.field public final widgets:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public static synthetic $r8$lambda$-kxpx6OayDES4Uhf2uTnVyDLic0(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->openPremium()V

    return-void
.end method

.method public static synthetic $r8$lambda$DxReTywZV78ahdXGwd7ISdgAuBg(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYFiG0jH-KtuEESnw2uwQuYWJ2E(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$onWidgetClick$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$q5Lnl067V_0f2xJCMiuZqeVPArI(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$new$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ygUdWrss1ezr8ItKKGxYiZAH86Y(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->lambda$openPremium$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->widgets:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->plus:Lorg/telegram/tgnet/TLRPC$Document;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onlyStickers:Z

    iput-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->greeting:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useSmoothKeyboard:Z

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {p4, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->occupyNavigationBar:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setUseLightStatusBar(Z)V

    new-instance p4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$ContainerView;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance p4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->savedPosition:I

    :goto_0
    iput v2, p4, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$5;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$5;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;ZLandroid/content/Context;)V

    invoke-virtual {p4, v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v3, 0x57

    invoke-static {v1, v1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v5, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    if-nez p2, :cond_1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setOnTypeSelected(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    iget p4, p4, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    int-to-float p4, p4

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setType(F)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    const/4 v2, -0x2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->disableGson(Z)V

    if-nez p2, :cond_2

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedEmoji()V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p3, v0, v0, p3}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, p3, p3, v0, p3}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3, v0, p3}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3, v0, p3}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->categoryIndex:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback3Return;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback3Return;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onlyStickers:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->greeting:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onPlusSelected:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onWidgetClick(I)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/messenger/Utilities$Callback2;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return p0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return p1
.end method

.method static synthetic access$7516(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;F)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    return v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method public static getCacheType(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x4004

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const/16 p0, 0xd

    :goto_1
    return p0
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 3

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->wasKeyboardVisible:Z

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->wasKeyboardVisible:Z

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardHeight:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const v2, 0x3e99999a    # 0.3f

    mul-float p1, p1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->top:F

    sub-float/2addr p1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->isManualScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->tabsView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$TabsView;->setType(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onWidgetClick$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onWidgetClick(I)V

    return-void
.end method

.method private static synthetic lambda$openPremium$0(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method private onWidgetClick(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canClickWidget(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->checkAudioPermission(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onWidgetSelected:Lorg/telegram/messenger/Utilities$CallbackReturn;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$CallbackReturn;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->dismiss()V

    :cond_1
    return-void
.end method

.method private openPremium()V
    .locals 4

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canClickWidget(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canDismissWithSwipe()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->maxPadding:F

    float-to-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canShowWidget(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected checkAudioPermission(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public closeKeyboard()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$GifPage;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 5

    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-eq p1, p2, :cond_0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_4

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    aget-object v2, p2, v1

    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    sget v3, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-eq p1, v3, :cond_2

    iget v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    if-nez v3, :cond_1

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    :cond_1
    iget v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$IPage;->currentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    aget-object v3, p3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->update()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->closeKeyboard()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->disableGson(Z)V

    return-void
.end method

.method public getContainerViewHeight()I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public hasWidgets()Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onWidgetSelected:Lorg/telegram/messenger/Utilities$CallbackReturn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->canShowWidget(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setBlurDelegate(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->drawBlurBitmap:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public showPremiumBulletin(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget v2, Lorg/telegram/messenger/R$string;->IncreaseLimit:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->premiumText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public whenDocumentSelected(Lorg/telegram/messenger/Utilities$Callback3Return;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onDocumentSelected:Lorg/telegram/messenger/Utilities$Callback3Return;

    return-object p0
.end method

.method public whenPlusSelected(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onPlusSelected:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public whenWidgetSelected(Lorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->onWidgetSelected:Lorg/telegram/messenger/Utilities$CallbackReturn;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getViewPages()[Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
