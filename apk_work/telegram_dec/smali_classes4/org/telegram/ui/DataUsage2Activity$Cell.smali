.class Lorg/telegram/ui/DataUsage2Activity$Cell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsage2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cell"
.end annotation


# instance fields
.field arrowView:Landroid/widget/ImageView;

.field divider:Z

.field imageView:Landroid/widget/ImageView;

.field linearLayout:Landroid/widget/LinearLayout;

.field linearLayout2:Landroid/widget/LinearLayout;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/DataUsage2Activity;

.field valueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataUsage2Activity;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->this$0:Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    const/16 v7, 0x10

    or-int/lit8 v10, v4, 0x10

    const/high16 v13, 0x41900000    # 18.0f

    const/4 v14, 0x0

    const/16 v8, 0x1c

    const/high16 v9, 0x41e00000    # 28.0f

    const/high16 v11, 0x41900000    # 18.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x5

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    :goto_1
    or-int/lit8 v12, v9, 0x10

    const/high16 v15, 0x41a00000    # 20.0f

    const/16 v16, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v13, 0x42800000    # 64.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLines(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v3, v11}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v11, 0x15

    const/4 v12, -0x2

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x15

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    :goto_2
    invoke-virtual {v3, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    invoke-static {v12, v12, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v13, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, 0x3

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    goto :goto_2

    :goto_3
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x5

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-static {v12, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v4, v12, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    :goto_5
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {v4, v12, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    goto :goto_5

    :goto_6
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->divider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42800000    # 64.0f

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

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(IILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p5, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->divider:Z

    xor-int/lit8 p1, p5, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setArrow(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$Cell;->arrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x43340000    # 180.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method
