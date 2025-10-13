.class public abstract Lorg/telegram/ui/ReadAllMentionsMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$DrkfNM6Yt5Is8WakSteytf1ehao(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ReadAllMentionsMenu;->lambda$show$0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$show$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static show(ILandroid/app/Activity;Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v3, p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    if-nez p0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->ReadAllReactions:I

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->ReadAllMentions:I

    goto :goto_0

    :goto_1
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_seen:I

    invoke-virtual {v2, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    new-instance p0, Lorg/telegram/ui/ReadAllMentionsMenu$$ExternalSyntheticLambda0;

    invoke-direct {p0, p6}, Lorg/telegram/ui/ReadAllMentionsMenu$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    new-instance p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 p1, -0x2

    invoke-direct {p0, v0, p1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 p1, 0xdc

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget p1, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/high16 p6, -0x80000000

    invoke-static {p5, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, p6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v0, p5, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p4}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p1, p5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p1, p5

    const/high16 p5, 0x41000000    # 8.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p1, p5

    invoke-virtual {p4}, Landroid/view/View;->getY()F

    move-result p4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p6

    int-to-float p6, p6

    add-float/2addr p5, p6

    add-float/2addr p1, p5

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p5, p2

    add-float/2addr p4, p5

    :cond_1
    float-to-int p1, p1

    float-to-int p2, p4

    const/16 p4, 0x33

    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object p0
.end method
