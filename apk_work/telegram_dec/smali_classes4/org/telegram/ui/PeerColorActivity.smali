.class public Lorg/telegram/ui/PeerColorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;,
        Lorg/telegram/ui/PeerColorActivity$Page;,
        Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;,
        Lorg/telegram/ui/PeerColorActivity$LevelLock;,
        Lorg/telegram/ui/PeerColorActivity$GiftCell;,
        Lorg/telegram/ui/PeerColorActivity$ProfilePreview;,
        Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;,
        Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;,
        Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;
    }
.end annotation


# static fields
.field private static final particles:[F


# instance fields
.field private actionBarContainer:Landroid/widget/FrameLayout;

.field private applying:Z

.field private applyingName:Z

.field private applyingProfile:Z

.field private backButton:Landroid/widget/ImageView;

.field private bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private changeDayNightView:Landroid/view/View;

.field private changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

.field private changeDayNightViewProgress:F

.field private colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

.field private contentView:Landroid/widget/FrameLayout;

.field private final currentColors:Landroid/util/SparseIntArray;

.field private dayNightItem:Landroid/widget/ImageView;

.field private final dialogId:J

.field private forceDark:Z

.field private final gifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

.field private final isChannel:Z

.field private isDark:Z

.field public loading:Z

.field private final msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private final msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public namePage:Lorg/telegram/ui/PeerColorActivity$Page;

.field private parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

.field private startAtProfile:Z

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private tabsView:Lorg/telegram/ui/Components/FilledTabsView;

.field private titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method public static synthetic $r8$lambda$3dsz6nLX_971V7Qu0zyHELXtXoo(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->lambda$toggleTheme$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$6oV_m6CbulBTSyS1sPpTsxdFd0g(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J5FRiv1IR6CRWxjt60v5dgMJhW4(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$JOrkanBduom9h5XT_4TRgjhPfgE(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showUnsavedAlert$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NV0USxIS3pEFJoBKxkpqdDoDo1g(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PeerColorActivity;->lambda$showUnsavedAlert$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nn6boSjHlSlfFIqKVaSmy4zLxmM(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$toggleTheme$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZJb686UXdgwHs35PuzmJ8U7qBM8(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b37c5gisLO-hyUOtZx1oLuRhmHQ(Lorg/telegram/ui/PeerColorActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity;->lambda$createView$0(Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/PeerColorActivity;->particles:[F

    return-void

    :array_0
    .array-data 4
        -0x3e700000    # -18.0f
        -0x3e3ab852    # -24.66f
        0x41c00000    # 24.0f
        0x3ecccccd    # 0.4f
        0x40aa8f5c    # 5.33f
        -0x3dac0000    # -53.0f
        0x41e00000    # 28.0f
        0x3ec28f5c    # 0.38f
        -0x3f800000    # -4.0f
        -0x3d540000    # -86.0f
        0x41980000    # 19.0f
        0x3e3851ec    # 0.18f
        0x41f80000    # 31.0f
        -0x3e100000    # -30.0f
        0x41a80000    # 21.0f
        0x3eb33333    # 0.35f
        0x41400000    # 12.0f
        -0x3fc00000    # -3.0f
        0x41c00000    # 24.0f
        0x3e3851ec    # 0.18f
        0x41f00000    # 30.0f
        -0x3d6e0000    # -73.0f
        0x41980000    # 19.0f
        0x3e99999a    # 0.3f
        0x422c0000    # 43.0f
        -0x3d360000    # -101.0f
        0x41800000    # 16.0f
        0x3dcccccd    # 0.1f
        -0x3db80000    # -50.0f
        0x3faa3d71    # 1.33f
        0x41a00000    # 20.0f
        0x3e6147ae    # 0.22f
        -0x3d980000    # -58.0f
        -0x3dfc0000    # -33.0f
        0x41c00000    # 24.0f
        0x3e6147ae    # 0.22f
        -0x3df40000    # -35.0f
        -0x3d880000    # -62.0f
        0x41c80000    # 25.0f
        0x3e6147ae    # 0.22f
        -0x3d940000    # -59.0f
        -0x3d500000    # -88.0f
        0x41980000    # 19.0f
        0x3e3851ec    # 0.18f
        -0x3d540000    # -86.0f
        -0x3d8c0000    # -61.0f
        0x41980000    # 19.0f
        0x3dcccccd    # 0.1f
        -0x3d4c0000    # -90.0f
        -0x3e9ab852    # -14.33f
        0x419d47ae    # 19.66f
        0x3e3851ec    # 0.18f
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 5

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->forceDark:Z

    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    new-instance v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v2, v3, p1, p2, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;-><init>(IJZ)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->gifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iput-boolean v1, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_limited:Z

    iput-boolean v1, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unlimited:Z

    iput-boolean v0, v2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->include_unique:Z

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->gifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    :goto_1
    new-instance p1, Lorg/telegram/ui/PeerColorActivity$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PeerColorActivity$1;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v1, v1, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    new-instance p1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v1, v1, v0, p2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PeerColorActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PeerColorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->gifts:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PeerColorActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PeerColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->buttonClick()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PeerColorActivity;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->msgInDrawableSelected:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PeerColorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/FilledTabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->tabsView:Lorg/telegram/ui/Components/FilledTabsView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PeerColorActivity;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewProgress:F

    return p0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/PeerColorActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewProgress:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PeerColorActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity;->changeDayNightView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/PeerColorActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->changeDayNightView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/telegram/ui/PeerColorActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static adaptProfileEmojiColor(I)I
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x3e8f5c29    # 0.28f

    goto :goto_1

    :cond_1
    const v0, -0x4170a3d7    # -0.28f

    :goto_1
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result p0

    return p0
.end method

.method private apply()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->applying:Z

    if-nez v2, :cond_10

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-nez v3, :cond_2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/16 v6, 0x7

    rem-long/2addr v4, v6

    long-to-int v5, v4

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-eqz v10, :cond_5

    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->applyingName:Z

    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$updateColor;-><init>()V

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/2addr v8, v1

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iget v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v8}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v8

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    iput v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:I

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_4

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    or-int/2addr v4, v1

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v8}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->background_emoji_id:J

    goto :goto_0

    :cond_4
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v3

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-eqz v10, :cond_a

    :cond_6
    iput-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->applyingProfile:Z

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    if-nez v3, :cond_7

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerColor;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    :cond_7
    new-instance v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;

    invoke-direct {v3}, Lorg/telegram/tgnet/tl/TL_account$updateColor;-><init>()V

    iput-boolean v1, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->for_profile:Z

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v4

    if-gez v4, :cond_8

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    goto :goto_1

    :cond_8
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/2addr v8, v1

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iget v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v8}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v8

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->color:I

    iput v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->color:I

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_9

    iget v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    or-int/2addr v4, v1

    iput v4, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->flags:I

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v8}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v8

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/tl/TL_account$updateColor;->background_emoji_id:J

    goto :goto_2

    :cond_9
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->profile_color:Lorg/telegram/tgnet/TLRPC$TL_peerColor;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->flags:I

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_peerColor;->background_emoji_id:J

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/PeerColorActivity;->eq(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object v3

    if-nez v3, :cond_b

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {v3}, Lorg/telegram/messenger/DialogObject;->isEmojiStatusCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_b
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusEmpty;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1500(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object v4

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    const/4 v4, 0x0

    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v10, v10, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    iget-object v10, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v10, v10, Lorg/telegram/ui/PeerColorActivity$Page;->uniqueGifts:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    iget-wide v11, v10, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v13, v11, v8

    if-nez v13, :cond_c

    move-object v5, v10

    goto :goto_4

    :cond_c
    add-int/2addr v4, v1

    goto :goto_3

    :cond_d
    :goto_4
    if-eqz v5, :cond_e

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;-><init>()V

    iget-wide v8, v5, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iput-wide v8, v3, Lorg/telegram/tgnet/TLRPC$TL_inputEmojiStatusCollectible;->collectible_id:J

    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v6, v7, v3, v5}, Lorg/telegram/messenger/MessagesController;->updateEmojiStatus(JLorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/tl/TL_stars$StarGift;)V

    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showBulletin()V

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->applying:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_EMOJI_STATUS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_10
    :goto_6
    return-void
.end method

.method private buttonClick()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->apply()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showBulletin()V

    return-void
.end method

.method public static eq(Lorg/telegram/tgnet/TLRPC$EmojiStatus;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    instance-of v3, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_4

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;->collectible_id:J

    cmp-long v4, v2, p0

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method private synthetic lambda$createView$0(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->scrollToPosition(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->onBackPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->toggleTheme()V

    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$3(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$showUnsavedAlert$4(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->buttonClick()V

    return-void
.end method

.method private static synthetic lambda$toggleTheme$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$toggleTheme$6()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->updateThemeColors()V

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PeerColorActivity;->setForceDark(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->updateColors()V

    return-void
.end method

.method private showBulletin()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applyingName:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applyingProfile:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->getCurrentPage()Lorg/telegram/ui/PeerColorActivity$Page;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->ChannelColorApplied:I

    goto :goto_0

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->UserColorApplied:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_4

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applyingProfile:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->applyingName:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->getCurrentPage()Lorg/telegram/ui/PeerColorActivity$Page;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-ne v0, v1, :cond_9

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v0

    if-gez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz v4, :cond_5

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2100(Lorg/telegram/ui/PeerColorActivity$Page;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/R$string;->ChannelProfileColorEmojiApplied:I

    goto :goto_2

    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->UserProfileColorEmojiApplied:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createStaticEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/messenger/R$string;->ChannelProfileColorResetApplied:I

    goto :goto_3

    :cond_6
    sget v2, Lorg/telegram/messenger/R$string;->UserProfileColorResetApplied:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1200(Lorg/telegram/ui/PeerColorActivity$Page;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->fromProfile(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v2, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->ChannelProfileColorApplied:I

    goto/16 :goto_0

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->UserProfileColorApplied:I

    goto/16 :goto_0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    :cond_a
    return-void
.end method

.method private showUnsavedAlert()V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsaved:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->UserColorUnsaved:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->ChannelColorUnsavedMessage:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UserColorUnsavedMessage:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Dismiss:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateColors()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->contentView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateColors()V

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->updateColors()V

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    return-void
.end method

.method public static withLevelLock(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "  L"

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p0, Lorg/telegram/ui/PeerColorActivity$LevelLock;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/telegram/ui/PeerColorActivity$LevelLock;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTranslateY(F)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-virtual {v1, p1, p0, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PeerColorActivity$3;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$4;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v5, v0, v1, v6}, Lorg/telegram/ui/PeerColorActivity$4;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x37

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/PeerColorActivity$5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/PeerColorActivity$5;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    new-instance v9, Lorg/telegram/ui/PeerColorActivity$6;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PeerColorActivity$6;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/16 v9, 0x77

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v5, v0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v5, :cond_2

    new-instance v5, Lorg/telegram/ui/Components/FilledTabsView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/FilledTabsView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->tabsView:Lorg/telegram/ui/Components/FilledTabsView;

    iget-boolean v7, v0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v7, :cond_0

    sget v7, Lorg/telegram/messenger/R$string;->ChannelColorTabName:I

    goto :goto_0

    :cond_0
    sget v7, Lorg/telegram/messenger/R$string;->UserColorTabName:I

    :goto_0
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-eqz v8, :cond_1

    sget v8, Lorg/telegram/messenger/R$string;->ChannelColorTabProfile:I

    goto :goto_1

    :cond_1
    sget v8, Lorg/telegram/messenger/R$string;->UserColorTabProfile:I

    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    aput-object v7, v9, v3

    aput-object v8, v9, v4

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/FilledTabsView;->setTabs([Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->tabsView:Lorg/telegram/ui/Components/FilledTabsView;

    new-instance v7, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/FilledTabsView;->onTabSelected(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/FilledTabsView;

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity;->tabsView:Lorg/telegram/ui/Components/FilledTabsView;

    const/16 v8, 0x28

    const/16 v9, 0x11

    invoke-static {v6, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    :goto_2
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    new-instance v5, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v7, Lorg/telegram/messenger/R$string;->ChannelColorTitle2:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/PeerColorActivity;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v13, 0x42900000    # 72.0f

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/16 v10, 0x13

    const/high16 v11, 0x42900000    # 72.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    goto :goto_2

    :goto_3
    iget-boolean v5, v0, Lorg/telegram/ui/PeerColorActivity;->startAtProfile:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->tabsView:Lorg/telegram/ui/Components/FilledTabsView;

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/FilledTabsView;->setSelected(F)V

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v7}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setProgressToGradient(F)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PeerColorActivity;->updateLightStatusBar()V

    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarWhiteSelector:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/PeerColorActivity;->backButton:Landroid/widget/ImageView;

    const/16 v11, 0x13

    const/16 v12, 0x36

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v14, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/high16 v9, 0x41e00000    # 28.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    iget-boolean v5, v0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    if-nez v5, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_4

    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v5, 0x24

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->beginApplyLayerColors()V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_menuName:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v9, "Sunny.**"

    invoke-virtual {v5, v9, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v9, "Path 6.**"

    invoke-virtual {v5, v9, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v9, "Path.**"

    invoke-virtual {v5, v9, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v5, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const-string v9, "Path 5.**"

    invoke-virtual {v5, v9, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->commitApplyLayerColors()V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v3, v6, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->actionBarContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    const/16 v4, 0x15

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    iget-object v3, v0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->updateColors()V

    iput-object v2, v0, Lorg/telegram/ui/PeerColorActivity;->contentView:Landroid/widget/FrameLayout;

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->premiumChanged()V

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->premiumChanged()V

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->update()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentPage()Lorg/telegram/ui/PeerColorActivity$Page;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    :goto_0
    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 14

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    filled-new-array/range {v1 .. v13}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasUnsavedChanged()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->hasUnsavedChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$Page;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLightStatusBar()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity;->colorBar:Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->getColor()I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isChannel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->hasUnsavedChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity;->showUnsavedAlert()V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentClosed()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentClosed()V

    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PeerColorActivity$2;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->loadReplyIcons()V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig(Z)V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starUserGiftsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setForceDark(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->forceDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity;->forceDark:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p1

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/PeerColorActivity;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->bulletinFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity;->parentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public startOnProfile()Lorg/telegram/ui/PeerColorActivity;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->startAtProfile:Z

    return-object p0
.end method

.method public toggleTheme()V
    .locals 17

    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v13, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v15, 0x2

    new-array v1, v15, [I

    iget-object v2, v12, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v10, v2

    aget v0, v1, v0

    int-to-float v11, v0

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v4, v10, v0

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->dayNightItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float v5, v11, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v8, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v2, Lorg/telegram/ui/PeerColorActivity$7;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v15, v2

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/PeerColorActivity$7;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Paint;FF)V

    iput-object v15, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightView:Landroid/view/View;

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput v14, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$8;

    invoke-direct {v1, v12}, Lorg/telegram/ui/PeerColorActivity$8;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$9;

    invoke-direct {v1, v12}, Lorg/telegram/ui/PeerColorActivity$9;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v12, Lorg/telegram/ui/PeerColorActivity;->changeDayNightView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, v12}, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PeerColorActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateLightStatusBar()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity;->isLightStatusBar()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public updateThemeColors()V
    .locals 9

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "themeconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastDayTheme"

    const-string v3, "Blue"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v1, v3

    :cond_1
    const-string v4, "lastDarkTheme"

    const-string v5, "Dark Blue"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v0, v5

    :cond_3
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Night"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move-object v3, v1

    goto :goto_2

    :cond_5
    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_6
    move-object v5, v0

    goto :goto_0

    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity;->isDark:Z

    if-eqz v0, :cond_7

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-static {v5, v4, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v4

    goto :goto_4

    :cond_8
    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v4

    :goto_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v6, 0x0

    :goto_5
    array-length v7, v5

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    aget v8, v5, v6

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz v4, :cond_d

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$Page;->access$300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity;->currentColors:Landroid/util/SparseIntArray;

    aget-object v3, v3, v2

    invoke-static {v0, v4, v3, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$300(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->themedWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->setOverrideBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    return-void
.end method
