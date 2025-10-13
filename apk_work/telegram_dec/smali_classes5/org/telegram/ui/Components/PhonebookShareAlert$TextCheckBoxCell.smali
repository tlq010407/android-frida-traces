.class public Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PhonebookShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextCheckBoxCell"
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/Switch;

.field private imageView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

.field private valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/PhonebookShareAlert;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->this$0:Lorg/telegram/ui/Components/PhonebookShareAlert;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$700(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    or-int/lit8 v4, v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1

    const/4 v8, 0x5

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    or-int/lit8 v11, v8, 0x30

    const/high16 v8, 0x42900000    # 72.0f

    const/16 v16, 0x40

    const/16 v17, 0x11

    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x11

    goto :goto_2

    :cond_2
    const/16 v4, 0x40

    :goto_2
    int-to-float v4, v4

    move v12, v4

    goto :goto_3

    :cond_3
    const/high16 v12, 0x42900000    # 72.0f

    :goto_3
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/high16 v14, 0x42900000    # 72.0f

    goto :goto_5

    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x11

    goto :goto_4

    :cond_5
    const/16 v4, 0x40

    :goto_4
    int-to-float v4, v4

    move v14, v4

    :goto_5
    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$900(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x5

    goto :goto_6

    :cond_6
    const/4 v4, 0x3

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7

    const/4 v11, 0x5

    goto :goto_7

    :cond_7
    const/4 v11, 0x3

    :goto_7
    if-eqz v4, :cond_9

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x11

    goto :goto_8

    :cond_8
    const/16 v4, 0x40

    :goto_8
    int-to-float v4, v4

    move v12, v4

    goto :goto_9

    :cond_9
    const/high16 v12, 0x42900000    # 72.0f

    :goto_9
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_a

    const/high16 v14, 0x42900000    # 72.0f

    goto :goto_b

    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x11

    goto :goto_a

    :cond_b
    const/16 v4, 0x40

    :goto_a
    int-to-float v8, v4

    move v14, v8

    :goto_b
    const/4 v15, 0x0

    const/4 v9, -0x2

    const/high16 v10, -0x40000000    # -2.0f

    const/high16 v13, 0x420c0000    # 35.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->imageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$1000(Lorg/telegram/ui/Components/PhonebookShareAlert;I)I

    move-result v5

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->imageView:Landroid/widget/ImageView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_c

    const/4 v5, 0x5

    goto :goto_c

    :cond_c
    const/4 v5, 0x3

    :goto_c
    or-int/lit8 v10, v5, 0x30

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    if-eqz v4, :cond_d

    const/4 v11, 0x0

    goto :goto_d

    :cond_d
    const/high16 v11, 0x41a00000    # 20.0f

    :goto_d
    if-eqz v4, :cond_e

    const/high16 v13, 0x41a00000    # 20.0f

    goto :goto_e

    :cond_e
    const/4 v13, 0x0

    :goto_e
    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40000000    # -2.0f

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/PhonebookShareAlert;->access$800(Lorg/telegram/ui/Components/PhonebookShareAlert;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/ui/Components/Switch;->setColors(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_f

    goto :goto_f

    :cond_f
    const/4 v6, 0x5

    :goto_f
    or-int/lit8 v9, v6, 0x10

    const/high16 v12, 0x41b00000    # 22.0f

    const/4 v13, 0x0

    const/16 v7, 0x25

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x428c0000    # 70.0f

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

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v7, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v7, :cond_0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move v8, p1

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->needDivider:Z

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public setVCardItem(Lorg/telegram/messenger/AndroidUtilities$VcardItem;IZ)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getValue(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->checkBox:Lorg/telegram/ui/Components/Switch;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lorg/telegram/messenger/AndroidUtilities$VcardItem;->checked:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/Components/Switch;->setChecked(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->imageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Components/PhonebookShareAlert$TextCheckBoxCell;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method
