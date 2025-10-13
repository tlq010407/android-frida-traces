.class public Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation


# instance fields
.field private span:Lorg/telegram/ui/Components/ColoredImageSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x3da3d70a    # 0.08f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    const v0, 0x3e19999a    # 0.15f

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2, p1, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->span:Lorg/telegram/ui/Components/ColoredImageSpan;

    const p2, 0x3f4ccccd    # 0.8f

    iput p2, p1, Lorg/telegram/ui/Components/ColoredImageSpan;->spaceScaleX:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x41d00000    # 26.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public setSorting(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;)V
    .locals 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "v "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_DATE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_0

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_gift_sorting_date:I

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0, p1, v4, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortDateShort:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_PRICE:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    if-ne p1, v1, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_gift_sorting_price:I

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0, p1, v4, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortPriceShort:I

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;->BY_NUMBER:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList$Sorting;

    if-ne p1, v1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_gift_sorting_num:I

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0, p1, v4, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    sget v1, Lorg/telegram/messenger/R$string;->ResellGiftFilterSortNumberShort:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, " v"

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$Filter;->span:Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
