.class public Lorg/telegram/ui/Components/Bulletin$BulletinWindow;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BulletinWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    }
.end annotation


# instance fields
.field private final container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

.field private params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$CBKwEjhSPSjglWzK-sK8ZxVM3Eo(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt p1, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 v4, 0x1e

    if-lt p1, v4, :cond_0

    const/16 v4, 0x700

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_0
    const/16 v4, 0x500

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v4, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow$1;-><init>(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    const v4, 0xc000018

    or-int/2addr v4, v1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-lt p1, v3, :cond_2

    const v3, -0x73fefee8

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_3

    invoke-static {v0, v2}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/Bulletin$BulletinWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private applyInsets(Landroid/view/WindowInsets;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)I

    move-result v1

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowInsets;)I

    move-result v2

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsets;)I

    move-result v3

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->applyInsets(Landroid/view/WindowInsets;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public static make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method

.method public static make(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;
    .locals 1

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->container:Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
