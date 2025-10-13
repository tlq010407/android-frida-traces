.class public Lorg/telegram/ui/Cells/RadioColorCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public heightDp:I

.field private radioButton:Lorg/telegram/ui/Components/RadioButton;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private text2View:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x32

    iput v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->heightDp:I

    iput-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p2, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/RadioColorCell;->getThemedColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Cells/RadioColorCell;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    :goto_0
    or-int/lit8 v6, v3, 0x30

    const/16 v3, 0x12

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x12

    :goto_1
    int-to-float v7, v5

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    int-to-float v9, v3

    const/4 v10, 0x0

    const/16 v4, 0x16

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Cells/RadioColorCell;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    :goto_3
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    const/4 v4, 0x5

    goto :goto_4

    :cond_4
    const/4 v4, 0x3

    :goto_4
    or-int/lit8 v7, v4, 0x30

    const/16 v4, 0x33

    const/16 v12, 0x15

    if-eqz v0, :cond_5

    const/16 v5, 0x15

    goto :goto_5

    :cond_5
    const/16 v5, 0x33

    :goto_5
    int-to-float v8, v5

    if-eqz v0, :cond_6

    const/16 v0, 0x33

    goto :goto_6

    :cond_6
    const/16 v0, 0x15

    :goto_6
    int-to-float v10, v0

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/RadioColorCell;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x5

    goto :goto_7

    :cond_7
    const/4 p2, 0x3

    :goto_7
    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    const/4 v1, 0x5

    :cond_8
    or-int/lit8 v7, v1, 0x30

    if-eqz p2, :cond_9

    const/16 v0, 0x15

    goto :goto_8

    :cond_9
    const/16 v0, 0x33

    :goto_8
    int-to-float v8, v0

    if-eqz p2, :cond_a

    goto :goto_9

    :cond_a
    const/16 v4, 0x15

    :goto_9
    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v9, 0x42140000    # 37.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.RadioButton"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RadioButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->heightDp:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckColor(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setTextAndText2AndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method

.method public setTextAndValue(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/RadioColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->text2View:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/RadioColorCell;->radioButton:Lorg/telegram/ui/Components/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    return-void
.end method
