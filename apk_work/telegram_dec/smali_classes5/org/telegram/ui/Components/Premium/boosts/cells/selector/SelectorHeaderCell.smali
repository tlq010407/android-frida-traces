.class public Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private final closeView:Landroid/widget/ImageView;

.field private final dividerPaint:Landroid/graphics/Paint;

.field private onCloseClickListener:Ljava/lang/Runnable;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Q_aq6LZJEciJ9EbiU8tIvtGbJGc(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->dividerPaint:Landroid/graphics/Paint;

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v8, 0x42540000    # 53.0f

    const/high16 v9, 0x41800000    # 16.0f

    if-eqz v7, :cond_1

    const/high16 v13, 0x41800000    # 16.0f

    goto :goto_1

    :cond_1
    const/high16 v13, 0x42540000    # 53.0f

    :goto_1
    if-eqz v7, :cond_2

    const/high16 v15, 0x42540000    # 53.0f

    goto :goto_2

    :cond_2
    const/high16 v15, 0x41800000    # 16.0f

    :goto_2
    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x17

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->closeView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v5, 0x5

    :cond_3
    or-int/lit8 v8, v5, 0x10

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x0

    const/16 v6, 0x18

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->onCloseClickListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected getHeaderHeight()I
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->getHeaderHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackImage(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->closeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setCloseImageVisible(Z)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->closeView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->textView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v3, 0x42540000    # 53.0f

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v7, 0x42540000    # 53.0f

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v7, 0x41b00000    # 22.0f

    :goto_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const/high16 v9, 0x42540000    # 53.0f

    goto :goto_3

    :cond_3
    const/high16 v9, 0x41b00000    # 22.0f

    :goto_3
    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x17

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setOnCloseClickListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->onCloseClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorHeaderCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
