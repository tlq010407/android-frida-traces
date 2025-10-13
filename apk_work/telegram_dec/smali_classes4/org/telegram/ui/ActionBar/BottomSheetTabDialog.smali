.class public Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;
    }
.end annotation


# instance fields
.field private attached:Z

.field public final navigationBar:Landroid/view/View;

.field public final navigationBarPaint:Landroid/graphics/Paint;

.field public final sheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

.field public final sheetView:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

.field public final windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;


# direct methods
.method public static synthetic $r8$lambda$mi9mEbznhj0FGRXpR2lBBTI87Mo(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V
    .locals 4

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->navigationBarPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->sheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getWindowView()Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->sheetView:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;

    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->navigationBar:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$SheetView;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x2

    const/16 v3, 0x50

    invoke-static {v2, p1, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public static checkSheet(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;
    .locals 2

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->hadDialog()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hasDialogOnTop(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;-><init>(Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;)V

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;->putView()V

    :cond_2
    return-object p0
.end method

.method private static synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl20$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/WindowInsets;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl30$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$Impl21$$ExternalSyntheticApiModelOutline6;->m(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attach()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attached:Z

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->sheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->setDialog(Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->attached:Z

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->sheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->dismiss(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

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
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    const/16 v1, 0x700

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    if-lt v0, v2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->windowView:Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$WindowView;

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_4
    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->sheet:Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheetTabsOverlay$Sheet;->getNavigationBarColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->navigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheetTabDialog;->navigationBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v4, v4, v4, v3}, Lorg/telegram/ui/LaunchActivity;->checkSystemBarColors(ZZZZ)V

    return-void
.end method
