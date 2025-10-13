.class public Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final backgroundView:Landroid/view/View;

.field public final button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final dividerPaint:Landroid/graphics/Paint;

.field private drawDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->dividerPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->backgroundView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x42400000    # 48.0f

    const/16 v3, 0x11

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->dividerPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->dividerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    return v0
.end method

.method public setActivateForFreeStyle()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumActivateForFree:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->backgroundView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setCloseStyle()V
    .locals 5

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Close"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setCloseStyle(Z)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setCloseStyle()V

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    return-void
.end method

.method public setGiftPremiumStyle(IZZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget p3, Lorg/telegram/messenger/R$string;->GiftPremium:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->backgroundView:Landroid/view/View;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setOkStyle(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->BoostingUseLink:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BoostingUseLink"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "OK"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStartGiveAwayStyle(IZ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->drawDivider:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v0, Lorg/telegram/messenger/R$string;->BoostingStartGiveaway:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->backgroundView:Landroid/view/View;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public updateCounter(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    return-void
.end method

.method public updateLoading(Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method
