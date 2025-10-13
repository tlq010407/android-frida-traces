.class public Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;
    }
.end annotation


# instance fields
.field private afterTextChangedListener:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;

.field private final editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lorg/telegram/ui/Components/EditTextCaption;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$1;

    const/16 v4, 0x80

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;I)V

    new-array v4, v2, [Landroid/text/InputFilter;

    aput-object v3, v4, v0

    const/16 v0, 0x4000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelCursor:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lorg/telegram/messenger/R$string;->BoostingGiveawayEnterYourPrize:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/16 v9, 0x24

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x10

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x14

    const/4 v4, -0x2

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x14

    const/4 v4, -0x1

    const/16 v7, 0x24

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;)Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->afterTextChangedListener:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;

    return-object p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAfterTextChangedListener(Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->afterTextChangedListener:Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell$AfterTextChangedListener;

    return-void
.end method

.method public setCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/EnterPrizeCell;->textView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
