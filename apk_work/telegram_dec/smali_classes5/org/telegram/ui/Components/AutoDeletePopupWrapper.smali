.class public Lorg/telegram/ui/Components/AutoDeletePopupWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;
    }
.end annotation


# instance fields
.field backItem:Landroid/view/View;

.field callback:Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;

.field private final disableItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field lastDismissTime:J

.field public textView:Landroid/widget/TextView;

.field public windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method public static synthetic $r8$lambda$JNIx45mMndDSeonMzuyTAnj6VfQ(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$4(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4O9VYnp0T8Egj1m9OoGNEacoIE(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$updateItems$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZEPY9oFJXFRFrkoPMSMPDIyNmE(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$6(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sfr9S7KJIwY7J9IdM5tHtqadP30(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$allowExtendedHint$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$USlcm-sxkAc3uqj0FYHVq5bRzA8(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPIrhIBafBkpGCDmSHyEjunyD3w(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$2(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$azFNuKRn9wCUF09yTCrT3UsIzU8(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$5(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$drjgVSRSxW0zNEfcJpZgdT4fC0E(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$3(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pvXNgr2nlHQ6ZurMIDcNrurzPVg(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lambda$new$1(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    sget p4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-direct {v0, p1, p4, p6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p4, 0x1

    invoke-virtual {v0, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    iput-object p3, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->callback:Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v3, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->backItem:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_autodelete_1d:I

    sget v2, Lorg/telegram/messenger/R$string;->AutoDelete1Day:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_autodelete_1w:I

    sget v2, Lorg/telegram/messenger/R$string;->AutoDelete7Days:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_autodelete_1m:I

    sget v2, Lorg/telegram/messenger/R$string;->AutoDelete1Month:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lorg/telegram/messenger/R$string;->AutoDeleteCustom:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-ne p5, p4, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->AutoDeleteCustom2:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_customize:I

    invoke-static {v0, v2, p2, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda6;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p5

    move-object v6, p6

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_disable:I

    sget v2, Lorg/telegram/messenger/R$string;->AutoDeleteDisable:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2, v1, p6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->disableItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eq p5, p4, :cond_3

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_3
    if-eq p5, p4, :cond_4

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-static {p3, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p5, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p1, p5, v0, p6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p5, -0x40800000    # -1.0f

    const/4 p6, -0x1

    invoke-static {p6, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p5

    invoke-virtual {p2, p3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p3, p5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p5, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v0, 0x8

    invoke-static {p6, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p6

    invoke-virtual {p5, p2, p6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    const/high16 p6, 0x41000000    # 8.0f

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p6

    invoke-virtual {p1, p3, v1, p5, p6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->AutoDeletePopupDescription:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->windowLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->callback:Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;

    invoke-interface {v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->dismiss()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lastDismissTime:J

    return-void
.end method

.method private synthetic lambda$allowExtendedHint$8()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->callback:Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;

    invoke-interface {v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->showGlobalAutoDeleteScreen()V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->dismiss()V

    const p2, 0x15180

    const/16 v0, 0x46

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->setAutoDeleteHistory(II)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->dismiss()V

    const p2, 0x93a80

    const/16 v0, 0x46

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->setAutoDeleteHistory(II)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->dismiss()V

    const p2, 0x28de80

    const/16 v0, 0x46

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->setAutoDeleteHistory(II)V

    return-void
.end method

.method private static synthetic lambda$new$4(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;ZI)V
    .locals 0

    mul-int/lit8 p1, p2, 0x3c

    if-nez p2, :cond_0

    const/16 p2, 0x47

    goto :goto_0

    :cond_0
    const/16 p2, 0x46

    :goto_0
    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->setAutoDeleteHistory(II)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->dismiss()V

    new-instance p5, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda8;

    invoke-direct {p5, p4}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;)V

    invoke-static {p1, p2, p3, p5}, Lorg/telegram/ui/Components/AlertsCreator;->createAutoDeleteDatePickerDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void
.end method

.method private synthetic lambda$new$6(Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->dismiss()V

    const/4 p2, 0x0

    const/16 v0, 0x47

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$Callback;->setAutoDeleteHistory(II)V

    return-void
.end method

.method private synthetic lambda$updateItems$7(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->updateItems(I)V

    return-void
.end method


# virtual methods
.method public allowExtendedHint(I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->AutoDeletePopupDescription:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AutoDeletePopupDescription2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;)V

    invoke-static {v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateItems(I)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->lastDismissTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AutoDeletePopupWrapper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AutoDeletePopupWrapper;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->disableItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AutoDeletePopupWrapper;->disableItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method
