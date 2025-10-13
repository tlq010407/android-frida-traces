.class public Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedFilterCell"
.end annotation


# instance fields
.field private addButton:Lorg/telegram/ui/Components/ProgressButton;

.field private needDivider:Z

.field private suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

.field private textView:Landroid/widget/TextView;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    const/4 v8, 0x5

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    const/high16 v11, 0x41b00000    # 22.0f

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v8, 0x5

    goto :goto_3

    :cond_3
    const/4 v8, 0x3

    :goto_3
    const/high16 v11, 0x41b00000    # 22.0f

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v10, 0x420c0000    # 35.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ProgressButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ProgressButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget p1, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonProgress:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProgressButton;->setProgressColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ProgressButton;->setBackgroundRoundRect(II)V

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x41e00000    # 28.0f

    const v2, 0x800035

    const/4 v3, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getSuggestedFilter()Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->needDivider:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->addButton:Lorg/telegram/ui/Components/ProgressButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFilter(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Z)V
    .locals 1

    iput-boolean p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->needDivider:Z

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->suggestedFilter:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->textView:Landroid/widget/TextView;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->valueTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->description:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
