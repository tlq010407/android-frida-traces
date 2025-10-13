.class public Lorg/telegram/ui/QrActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;,
        Lorg/telegram/ui/QrActivity$QrView;,
        Lorg/telegram/ui/QrActivity$ThemeListViewController;,
        Lorg/telegram/ui/QrActivity$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static cachedThemes:Ljava/util/List;

.field private static firstOpen:Z

.field private static final qrColorsMap:Landroidx/collection/ArrayMap;


# instance fields
.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private backgroundView:Landroid/view/View;

.field private chatId:J

.field private closeImageView:Landroid/widget/ImageView;

.field private currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private final emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

.field private emojiThemeIcon:Landroid/graphics/Bitmap;

.field private final homeTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field private isCurrentThemeDark:Z

.field private logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private final logoRect:Landroid/graphics/Rect;

.field private patternAlphaAnimator:Landroid/animation/ValueAnimator;

.field private patternIntensityAnimator:Landroid/animation/ValueAnimator;

.field private prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private prevQrColors:[I

.field private prevSystemUiVisibility:I

.field private qrView:Lorg/telegram/ui/QrActivity$QrView;

.field private final resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

.field private selectedPosition:I

.field private tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

.field private themeLayout:Landroid/widget/FrameLayout;

.field private themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

.field private userId:J


# direct methods
.method public static synthetic $r8$lambda$AM2rnHK6_xleM8mgcuQ9RrWHLFE(Lorg/telegram/ui/QrActivity;ZJLandroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$9(ZJLandroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DU3fl74YyUGP9a0be3wAiaBHCZg(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/EmojiThemes;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity;->lambda$createView$2(Lorg/telegram/ui/ActionBar/EmojiThemes;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dv-4IqRo1fT1Hs05ilVetzRPwOw(Lorg/telegram/ui/QrActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JUnywhFkUT-4O5PDx3-ddobb8w0(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$K4zAy_xFV_lvbOlmCm6TjQtrz7k(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$LWCugrTkaZEK1dDy2aG-p3IInz4(Lorg/telegram/ui/QrActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M1Nn--H0k1UMi5qeeJ_FZvsEdkI(Lorg/telegram/ui/QrActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$10(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFktutQCN4zPmN1kyMBLfnyEeGg(Lorg/telegram/ui/QrActivity;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/QrActivity;->lambda$createView$0(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUo6DSJ5zmS6XrNjH3fzcjbT3Rc(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZW-_m0pVUsunMtNVcOd__Ujrx6w(Lorg/telegram/ui/QrActivity;[ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$12([ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b3zV8vhTtHdvoEn6bPIFj19aOUo(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$daURllRtN8SzgfipJYoMlyq6SPE(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$getThemeDescriptions$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$kdok_VEe7k4cnz9giKB0TBqzlcU(Lorg/telegram/ui/QrActivity;ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/QrActivity;->lambda$onItemSelected$14(ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpd93Rwr_5-YV8QL0A9Y48yJAJc(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$nM0P7eIYcNgRcul2JELwp7UFFA4(Lorg/telegram/ui/QrActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$obtqP8oFLuMOLPGGTFrYAFQ-scI(Lorg/telegram/ui/QrActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->lambda$performShare$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$qQyKqAcaRppV9468ltjN7Flir9g(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity;->lambda$onRequestPermissionsResultFragment$16(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xtTZrPpGMUCejydQbazD-HW1ymo(Lorg/telegram/ui/QrActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->lambda$onPatternLoaded$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/QrActivity;->qrColorsMap:Landroidx/collection/ArrayMap;

    const v1, -0x6544c2

    const v2, -0x974aa2

    const v3, -0x8e49ac

    const v4, -0xd36f89

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udfe0d"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x624ec7

    const v2, -0x7a46b0

    const v3, -0xbc5c8f

    const v4, -0x7542b4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc25d"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xbe452e

    const v2, -0x756801

    const v3, -0x995e01

    const v4, -0xa64a12

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\u26c4d"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x528605

    const v2, -0x207939

    const v3, -0xae670b

    const v4, -0xb4482e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc8ed"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xc96523

    const v2, -0xa23985

    const v3, -0x6546ab

    const v4, -0xb7576a

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc68\u200d\ud83c\udfebd"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x1aa26d

    const v2, -0x348a29

    const v3, -0x117fbc

    const v4, -0x1e64dd

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udf37d"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x52960e

    const/16 v2, -0x6da9

    const v3, -0x11a682

    const v4, -0x1ca04e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc9cd"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x1c89e4

    const v2, -0xb55d6

    const v3, -0x138fba

    const v4, -0x869da

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udf84d"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x19b38d

    const v2, -0x135dde

    const v3, -0xe64c2e

    const v4, -0x239d0c

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udfaed"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xe78933

    const v2, -0xd35932

    const v3, -0xea802f

    const v4, -0xb5930e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udfe0n"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x9264e9

    const v2, -0xc054ab

    const v3, -0xa85ae8

    const v4, -0xe189b0

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc25n"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xe25937

    const v2, -0x948301

    const v3, -0xd49126

    const v4, -0xd0834a

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\u26c4n"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xdb653e

    const v2, -0xcb852b

    const v3, -0x4da948

    const v4, -0x90ad01

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc8en"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xea5381

    const v2, -0xf1736b

    const v3, -0xdc7498

    const v4, -0x8c5e9d

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc68\u200d\ud83c\udfebn"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x31b99f

    const v2, -0x53a038

    const v3, -0x26abac

    const v4, -0x2d88f1

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udf37n"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x27aa98

    const v2, -0x5c962d

    const v3, -0x2fa756

    const v4, -0x1f8bc2

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83d\udc9cn"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0x3192d0

    const v2, -0x3675e3

    const v3, -0x2997e1

    const v4, -0x3179db

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udf84n"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, -0xf94f07

    const v2, -0x5cb801

    const v3, -0x38bcbd

    const v4, -0x1380ca

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const-string v2, "\ud83c\udfaen"

    invoke-virtual {v0, v2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/QrActivity;->firstOpen:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/QrActivity$1;)V

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->createHomeQrTheme(I)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->homeTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/QrActivity;->logoRect:Landroid/graphics/Rect;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    iput-object v0, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    new-instance v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 p1, -0x1

    iput p1, p0, Lorg/telegram/ui/QrActivity;->selectedPosition:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/ActionBar/EmojiThemes;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/QrActivity;->selectedPosition:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/QrActivity;->onItemSelected(Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/QrActivity;)[I
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/QrActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/QrActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/QrActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->themeLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/QrActivity$QrView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/QrActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/QrActivity;->userId:J

    return-wide v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/QrActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/QrActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/EmojiThemes;Z)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/QrActivity;->getEmojiThemeIcon(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/QrActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/QrActivity;->onDataLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4402(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lorg/telegram/ui/QrActivity;->cachedThemes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/QrActivity;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->logoRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/QrActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/QrActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/QrActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/Components/MotionBackgroundDrawable;)Lorg/telegram/ui/Components/MotionBackgroundDrawable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    return-object p1
.end method

.method private applyScreenSettings()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/QrActivity;->prevSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x404

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private getEmojiThemeIcon(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v1, Lorg/telegram/ui/QrActivity;->qrColorsMap:Landroidx/collection/ArrayMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-nez v2, :cond_0

    new-instance v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIZ)V

    iput-object v2, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v1, v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v6, v2

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->tempMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private synthetic lambda$createView$0(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->logoRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/ActionBar/EmojiThemes;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/QrActivity;->onItemSelected(Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object p1, p1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->performShare()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->openCameraScanActivity()V

    return-void
.end method

.method private synthetic lambda$createView$5()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/QrActivity;->onItemSelected(Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->cacheFrame(I)V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->homeTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/QrActivity;)V

    const-wide/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/QrActivity;->firstOpen:Z

    sget-object v0, Lorg/telegram/ui/QrActivity;->cachedThemes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/telegram/ui/QrActivity;->cachedThemes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/telegram/ui/QrActivity;->onDataLoaded(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/QrActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/QrActivity$4;-><init>(Lorg/telegram/ui/QrActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ChatThemeController;->requestAllChatThemes(Lorg/telegram/tgnet/ResultCallback;Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$17()V
    .locals 1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    return-void
.end method

.method private synthetic lambda$onItemSelected$10(Landroid/graphics/Bitmap;)V
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/QrActivity;->onPatternLoaded(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$onItemSelected$11()V
    .locals 4

    sget v0, Lorg/telegram/messenger/R$raw;->default_pattern:I

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/high16 v3, -0x1000000

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/SvgHelper;->getBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/QrActivity;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemSelected$12([ILandroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBackgroundAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, p1, v1

    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aget v2, p1, v2

    invoke-static {v1, v2, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    aget v3, p1, v3

    invoke-static {v2, v3, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aget p1, p1, v4

    invoke-static {v3, p1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/telegram/ui/QrActivity$QrView;->setColors(IIII)V

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onItemSelected$13()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v2, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->initColors(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V

    return-void
.end method

.method private synthetic lambda$onItemSelected$14(ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;->initColors(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    goto :goto_0

    :goto_1
    new-instance p1, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/QrActivity;)V

    iput-object p1, p3, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object p1, p1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->calcRippleColor(I)I

    move-result p2

    const/16 p3, 0x19

    invoke-static {p2, p3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    const/4 p3, 0x1

    new-array p3, p3, [F

    const/high16 v0, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    aput v0, p3, v1

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->createRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onItemSelected$9(ZJLandroid/util/Pair;)V
    .locals 4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getTlTheme(I)Lorg/telegram/tgnet/TLRPC$TL_theme;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    if-eqz p4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getIntensity()I

    move-result p1

    const-wide/16 p2, 0x96

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p4, p1, p2}, Lorg/telegram/ui/QrActivity;->onPatternLoaded(Landroid/graphics/Bitmap;IZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onPatternLoaded$8(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$16(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$performShare$15()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private onDataLoaded(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->homeTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadPreviewColors(I)V

    new-instance v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V

    iget-boolean v5, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    iput v5, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-direct {p0, v3, v5}, Lorg/telegram/ui/QrActivity;->getEmojiThemeIcon(Lorg/telegram/ui/ActionBar/EmojiThemes;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object p1, p1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->adapter:Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet$Adapter;->setItems(Ljava/util/List;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, -0x1

    if-eq v1, p1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getEmoticon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iput-object v0, p1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->selectedItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_2
    if-eq v1, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->setSelectedPosition(I)V

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-virtual {p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->onDataLoaded()V

    :cond_5
    :goto_3
    return-void
.end method

.method private onItemSelected(Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    iput p2, p0, Lorg/telegram/ui/QrActivity;->selectedPosition:I

    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v2, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v4, v4, v5

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iput-object v6, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setIndeterminateAnimation(Z)V

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    new-instance v6, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v9, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v9, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgColor:I

    iget v10, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor1:I

    iget v11, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor2:I

    iget v3, v3, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->patternBgGradientColor3:I

    invoke-virtual {v6, v9, v10, v11, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setParentView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setIndeterminateAnimation(Z)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v3, v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    iput v3, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget v5, v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v3, v5}, Lorg/telegram/ui/QrActivity$QrView;->setPosAnimationProgress(F)V

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currentTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    new-instance v9, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda11;

    invoke-direct {v9, p0, v2, v5, v6}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/QrActivity;ZJ)V

    invoke-virtual {v3, v2, v9}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/QrActivity;)V

    const-wide/16 v9, 0x23

    invoke-virtual {v3, v5, v9, v10}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    sget-object v3, Lorg/telegram/ui/QrActivity;->qrColorsMap:Landroidx/collection/ArrayMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/EmojiThemes;->emoji:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string p1, "n"

    goto :goto_2

    :cond_3
    const-string p1, "d"

    :goto_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x0

    const/high16 v3, 0x437a0000    # 250.0f

    const/4 v5, 0x4

    if-eqz p3, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    if-nez v6, :cond_4

    new-array v6, v5, [I

    iput-object v6, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    invoke-static {p1, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setAlpha(I)V

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBackgroundAlpha(F)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/QrActivity;[I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lorg/telegram/ui/QrActivity$5;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/QrActivity$5;-><init>(Lorg/telegram/ui/QrActivity;[I)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    mul-float v0, v4, v3

    float-to-int v0, v0

    int-to-long v5, v0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->patternAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    aget v8, p1, v7

    aget v9, p1, v1

    aget v0, p1, v0

    const/4 v10, 0x3

    aget v10, p1, v10

    invoke-virtual {v6, v8, v9, v0, v10}, Lorg/telegram/ui/QrActivity$QrView;->setColors(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->prevQrColors:[I

    invoke-static {p1, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object v2, p0, Lorg/telegram/ui/QrActivity;->prevMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_4

    :cond_7
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    :goto_4
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    iget-boolean v5, p0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    xor-int/lit8 v6, p3, 0x1

    invoke-direct {v0, v2, p1, v5, v6}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    iput-boolean v7, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    invoke-virtual {p0}, Lorg/telegram/ui/QrActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    mul-float v4, v4, v3

    float-to-int p1, v4

    int-to-long v1, p1

    iput-wide v1, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    new-instance p1, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p3, p2, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/QrActivity;ZLorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onPatternLoaded(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/QrActivity;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/QrActivity;->patternIntensityAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openCameraScanActivity()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/QrActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/QrActivity$6;-><init>(Lorg/telegram/ui/QrActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private performShare()V
    .locals 8

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    const v4, 0x3ff5c28f    # 1.92f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    mul-float v3, v3, v4

    float-to-int v1, v3

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lorg/telegram/ui/QrActivity;->themeLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/QrActivity$QrView;->setForShare(Z)V

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v7, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v0, v1, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v0, 0x21

    invoke-virtual {v4, v3, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->drawFrame(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->themeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v6, v6, v3, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lorg/telegram/ui/QrActivity$QrView;->setForShare(Z)V

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "qr_tmp.jpg"

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapShareUri(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    sget v1, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/QrActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private phoneIsPublic()Z
    .locals 7

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_3

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    if-ne v0, v4, :cond_a

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v6, :cond_6

    return v5

    :cond_6
    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v6, :cond_7

    return v1

    :cond_7
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowContacts;

    if-eqz v4, :cond_8

    return v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return v5

    :cond_a
    if-eqz v0, :cond_b

    if-ne v0, v5, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method private restoreScreenSettings()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/QrActivity;->prevSystemUiVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/ui/QrActivity;->isCurrentThemeDark:Z

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    new-instance v2, Lorg/telegram/ui/QrActivity$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/QrActivity$1;-><init>(Lorg/telegram/ui/QrActivity;Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/QrActivity$2;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/QrActivity$2;-><init>(Lorg/telegram/ui/QrActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/QrActivity;->backgroundView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-wide v6, v0, Lorg/telegram/ui/QrActivity;->userId:J

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v11, v0, Lorg/telegram/ui/QrActivity;->userId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/QrActivity;->phoneIsPublic()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v7, :cond_0

    const-string v12, "+"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move-object v11, v4

    const/4 v12, 0x0

    goto :goto_0

    :goto_1
    new-instance v14, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v6, v8}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-static {v6, v3}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    move-object/from16 v19, v14

    move-object/from16 v17, v15

    move-object v15, v3

    move v3, v12

    goto :goto_2

    :cond_3
    iget-wide v6, v0, Lorg/telegram/ui/QrActivity;->chatId:J

    cmp-long v11, v6, v9

    if-eqz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v11, v0, Lorg/telegram/ui/QrActivity;->chatId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-static {v6, v8}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    invoke-static {v6, v3}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    move-object v11, v4

    move-object/from16 v19, v14

    move-object/from16 v17, v15

    const/4 v13, 0x0

    move-object v15, v6

    goto :goto_2

    :cond_4
    move-object v7, v4

    move-object v11, v7

    move-object v15, v11

    move-object/from16 v17, v15

    move-object/from16 v19, v17

    const/4 v13, 0x0

    :goto_2
    new-instance v6, Lorg/telegram/ui/QrActivity$QrView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/QrActivity$QrView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    const v12, -0x6544c2

    const v14, -0x974aa2

    const v9, -0x8e49ac

    const v10, -0xd36f89

    invoke-virtual {v6, v9, v10, v12, v14}, Lorg/telegram/ui/QrActivity$QrView;->setColors(IIII)V

    if-eqz v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v4

    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    if-eqz v11, :cond_6

    move-object v7, v11

    :cond_6
    invoke-virtual {v9, v6, v7, v3, v13}, Lorg/telegram/ui/QrActivity$QrView;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    new-instance v6, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/QrActivity$QrView;->setCenterChangedListener(Lorg/telegram/ui/QrActivity$QrView$QrCenterChangedListener;)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->qrView:Lorg/telegram/ui/QrActivity$QrView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v6, Lorg/telegram/messenger/R$raw;->qr_code_logo_2:I

    const/16 v7, 0x3c

    invoke-virtual {v3, v6, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->logoImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/QrActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x42280000    # 42.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x42a80000    # 84.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x33

    const/16 v7, 0x54

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v14, v0, Lorg/telegram/ui/QrActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v16, "84_84"

    const-string v18, "50_50"

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v14 .. v23}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x28000000

    const v9, 0x28ffffff

    invoke-static {v6, v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->closeImageView:Landroid/widget/ImageView;

    const/16 v6, 0x22

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v9, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_qr_mini:I

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v7, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v7, v7, v9

    iget-object v10, v0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v9

    invoke-virtual {v1, v3, v7, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lorg/telegram/ui/QrActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v1, v0, v0, v3}, Lorg/telegram/ui/QrActivity$3;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V

    iput-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v3, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->rootLayout:Landroid/widget/FrameLayout;

    iput-object v3, v0, Lorg/telegram/ui/QrActivity;->themeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->onCreate()V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    new-instance v3, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->setItemSelectedListener(Lorg/telegram/ui/QrActivity$OnItemSelectedListener;)V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->QrCode:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->progressView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, v1, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonWrap:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    new-instance v3, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->themeLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-static {v5, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/QrActivity;->currMotionDrawable:Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setIndeterminateAnimation(Z)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget-object v1, Lorg/telegram/messenger/Utilities;->themeQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/QrActivity;)V

    const-wide/16 v3, 0x19

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/QrActivity;)V

    sget-boolean v3, Lorg/telegram/ui/QrActivity;->firstOpen:Z

    if-eqz v3, :cond_8

    const-wide/16 v9, 0xfa

    goto :goto_4

    :cond_8
    const-wide/16 v9, 0x0

    :goto_4
    invoke-virtual {v1, v2, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/QrActivity;->prevSystemUiVisibility:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/QrActivity;->applyScreenSettings()V

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->resourcesProvider:Lorg/telegram/ui/QrActivity$ThemeResourcesProvider;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-virtual {v2}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/QrActivity;)V

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v4, v3, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v9, v2

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v14, v4, Lorg/telegram/ui/QrActivity$ThemeListViewController;->shareButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v15, v4, v5

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v3, v3, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButton:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v4, v3, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButton:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v9, v2

    move v10, v12

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v4, v3, Lorg/telegram/ui/QrActivity$ThemeListViewController;->scanButtonIcon:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/QrActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/QrActivity;->userId:J

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/QrActivity;->chatId:J

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    invoke-virtual {v0}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/QrActivity;->themesViewController:Lorg/telegram/ui/QrActivity$ThemeListViewController;

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lorg/telegram/ui/QrActivity;->emojiThemeIcon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/QrActivity;->emojiThemeDarkIcons:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->restoreScreenSettings()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->restoreScreenSettings()V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x22

    if-ne p1, p2, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->openCameraScanActivity()V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/QrActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/QrActivity;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->ContactsPermissionAlertNotNow:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x48

    invoke-virtual {p1, p3, v1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    invoke-direct {p0}, Lorg/telegram/ui/QrActivity;->applyScreenSettings()V

    return-void
.end method
