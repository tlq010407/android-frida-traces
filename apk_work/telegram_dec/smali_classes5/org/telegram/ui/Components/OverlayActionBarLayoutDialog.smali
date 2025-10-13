.class public Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;
    }
.end annotation


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$6X80sisjRJzgoLHgABcVYJ_11E0(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AKW-EMZGytT31G2x4IT_NdAkiqA(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Z)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentStack(Ljava/util/List;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    new-instance v1, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$EmptyFragment;-><init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$1;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-boolean p2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v0, -0x67000000

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setRemoveActionBarExtraHeight(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    iget-object p1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->onBackPressed()V

    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public addFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return v0
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 0

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->onBackPressed()V

    iget-object v0, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->actionBarLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/16 v2, 0x15

    if-lt v0, v1, :cond_0

    const v1, -0x7fffff00

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    :cond_0
    if-lt v0, v2, :cond_1

    const v1, -0x7ffeff00

    goto :goto_0

    :cond_1
    :goto_1
    sget v1, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x33

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x10

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v0, v3, :cond_2

    invoke-static {v1, v4}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x17

    const/4 v3, 0x0

    if-lt v0, v1, :cond_3

    invoke-static {p1, v3}, Lcom/huawei/hms/activity/BridgeActivity$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/Window;I)V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    const/16 v5, 0x500

    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-lt v0, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_4
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v0, v5

    if-ltz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static {p1, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_6
    return-void
.end method

.method public onMeasureOverride([I)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x44048000    # 530.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    aput v0, p1, v1

    const/high16 v0, 0x44040000    # 528.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v1, 0x1

    aget v3, p1, v1

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    aput v0, p1, v1

    :cond_0
    return-void
.end method

.method public onPreIme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->addOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->removeOverlayPasscodeView(Lorg/telegram/ui/Components/PasscodeView;)V

    :cond_1
    return-void
.end method

.method public synthetic onThemeProgress(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate$-CC;->$default$onThemeProgress(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;F)V

    return-void
.end method
