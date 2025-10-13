.class public Lorg/telegram/ui/Cells/TextCheckBoxCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p3, :cond_0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setLines(I)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :goto_2
    or-int/lit8 v6, v1, 0x30

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v4, 0x42840000    # 66.0f

    if-eqz v0, :cond_4

    const/high16 v7, 0x42840000    # 66.0f

    goto :goto_3

    :cond_4
    const/high16 v7, 0x41a80000    # 21.0f

    :goto_3
    if-eqz v0, :cond_5

    const/high16 v9, 0x41a80000    # 21.0f

    goto :goto_4

    :cond_5
    const/high16 v9, 0x42840000    # 66.0f

    :goto_4
    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-direct {p3, p1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x5

    :goto_5
    or-int/lit8 v5, v2, 0x10

    const/high16 v8, 0x41a80000    # 21.0f

    const/4 v9, 0x0

    const/16 v3, 0x12

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v6, 0x41a80000    # 21.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.CheckBox"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    return-void
.end method

.method public setTextAndCheck(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextCheckBoxCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
