.class public Lorg/telegram/ui/ChooseSpeedLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChooseSpeedLayout$Callback;
    }
.end annotation


# instance fields
.field slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

.field speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field public speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method public static synthetic $r8$lambda$40btgsxU0SDlced_E-7nrnG-Zms(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$5(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBzCkc7OvFMkHVuIBfMrQcTx7c0(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$6(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJ1f29IWjDJd1OZS1QFCoAQYl7k(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$1(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQFmIvasuGGMOhSWUKqUxaD9kQY(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$diEXhfs8g1cYXmiYqzh1YaDqAho(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$4(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iI4IKzvOy1SS872JIvCm3rIf4Rg(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$3(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLRORhhlNkRBCnsLz3K-eRXpWoc(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout;->lambda$new$2(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iput-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, -0x50506

    invoke-virtual {v1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v5, 0xfffffff

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    new-instance v1, Lorg/telegram/ui/ChooseSpeedLayout$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$1;-><init>(Lorg/telegram/ui/ChooseSpeedLayout;Landroid/content/Context;)V

    const/high16 v6, 0x43440000    # 196.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setMinimumWidth(I)V

    const v7, -0xe7e7e8

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 v9, -0x1

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-direct {v1, p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setDrawShadow(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const v8, -0xddddde

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    new-instance v8, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda1;

    invoke-direct {v8, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V

    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v8, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/16 v11, 0x2c

    invoke-static {v9, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/ChooseSpeedLayout$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChooseSpeedLayout$2;-><init>(Lorg/telegram/ui/ChooseSpeedLayout;Landroid/content/Context;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    iput v9, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_0_2:I

    sget v1, Lorg/telegram/messenger/R$string;->SpeedVerySlow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aput-object p1, v0, v2

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v1, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aput-object p1, v0, v4

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v1, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v1, Lorg/telegram/messenger/R$string;->SpeedFast:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v1, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance p2, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda6;

    invoke-direct {p2, p3}, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 p3, 0x4

    aput-object p1, p2, p3

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x40133333    # 2.3f

    mul-float p1, p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr p1, v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 1

    const p1, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method

.method private static synthetic lambda$new$3(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method

.method private static synthetic lambda$new$4(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method

.method private static synthetic lambda$new$5(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x3fc00000    # 1.5f

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method

.method private static synthetic lambda$new$6(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Landroid/view/View;)V
    .locals 1

    const/high16 p1, 0x40000000    # 2.0f

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0, v0}, Lorg/telegram/ui/ChooseSpeedLayout$Callback;->onSpeedSelected(FZZ)V

    return-void
.end method


# virtual methods
.method public update(FZ)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_6

    if-eqz p2, :cond_5

    if-nez v0, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_4

    :cond_0
    const v1, 0x3dcccccd    # 0.1f

    if-ne v0, v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/high16 v2, 0x3fc00000    # 1.5f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v0

    const v2, -0x944907

    :goto_1
    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ChooseSpeedLayout;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v1, v1, v0

    const v2, -0x50506

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChooseSpeedLayout;->slider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    return-void
.end method
