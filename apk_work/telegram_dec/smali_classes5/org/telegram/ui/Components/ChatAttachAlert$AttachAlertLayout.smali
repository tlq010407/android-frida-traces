.class public abstract Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachAlertLayout"
.end annotation


# instance fields
.field protected parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method public applyCaption(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canScheduleMessages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkColors()V
    .locals 0

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41880000    # 17.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomActionBarBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public hasCustomActionBarBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDoneItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDoneItemEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onButtonsTranslationYUpdated()V
    .locals 0

    return-void
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    return-void
.end method

.method public onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDismiss()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissWithButtonClick(I)V
    .locals 0

    return-void
.end method

.method public onDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHidden()V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onHideShowProgress(F)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 0

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSelectedItemsCountChanged(I)V
    .locals 0

    return-void
.end method

.method public onSheetKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 0

    return-void
.end method

.method public onShown()V
    .locals 0

    return-void
.end method

.method public scrollToTop()V
    .locals 0

    return-void
.end method

.method public sendSelectedItems(ZIJZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldHideBottomButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
