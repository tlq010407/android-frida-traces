.class public Lorg/telegram/ui/Components/FlickerLoadingView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private color0:I

.field private color1:I

.field private colorKey1:I

.field private colorKey2:I

.field private colorKey3:I

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gradient:Landroid/graphics/LinearGradient;

.field private gradientWidth:I

.field private headerPaint:Landroid/graphics/Paint;

.field private ignoreHeightCheck:Z

.field private isSingleCell:Z

.field private itemsCount:I

.field private lastUpdateTime:J

.field private matrix:Landroid/graphics/Matrix;

.field private memberRequestButtonWidth:F

.field private paddingLeft:I

.field private paddingTop:I

.field private paint:Landroid/graphics/Paint;

.field private parentHeight:I

.field private parentWidth:I

.field private parentXOffset:F

.field randomParams:[F

.field private rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showDate:Z

.field private skipDrawItemsCount:I

.field private totalTranslation:I

.field private useHeaderOffset:Z

.field private viewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    iput-object p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private checkRtl(F)F
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method private checkRtl(Landroid/graphics/RectF;)V
    .locals 2

    .line 0
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    return-void
.end method

.method private getCellHeight(I)I
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x42600000    # 56.0f

    const/high16 v4, 0x42680000    # 58.0f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/high16 p1, 0x42e00000    # 112.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_2
    const/high16 p1, 0x430c0000    # 140.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_5
    const/high16 p1, 0x42400000    # 48.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_6
    const/high16 p1, 0x42000000    # 32.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_7
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_9
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_a
    const/high16 p1, 0x424c0000    # 51.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_b
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x4c

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    :goto_0
    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_c
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_d
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_e
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_f
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_10
    const/high16 p1, 0x42d60000    # 107.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_11
    const/high16 p1, 0x42ce0000    # 103.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_12
    const/high16 p1, 0x42100000    # 36.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_13
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_14
    const/high16 p1, 0x42840000    # 66.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_15
    const/high16 p1, 0x42740000    # 61.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_16
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x4e

    goto :goto_1

    :cond_1
    const/16 p1, 0x48

    :goto_1
    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_17
    const/high16 p1, 0x42800000    # 64.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_18
    const/high16 p1, 0x42a00000    # 80.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_19
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    return p1

    :pswitch_1a
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v1

    div-int/2addr p1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :pswitch_1b
    const/high16 p1, 0x429c0000    # 78.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_17
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getAdditionalHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnsCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v1, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v1, v1, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    :cond_1
    move-object v8, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v1

    neg-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    const/high16 v9, 0x42000000    # 32.0f

    if-eqz v2, :cond_6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v10, v1, v2

    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    if-ltz v1, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    if-ltz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->headerPaint:Landroid/graphics/Paint;

    move-object v6, v1

    goto :goto_0

    :cond_5
    move-object v6, v8

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v10

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v3, 0x7

    const/high16 v10, 0x42380000    # 46.0f

    const/high16 v11, 0x42180000    # 38.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v12, 0x41e00000    # 28.0f

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v14, 0x41c00000    # 24.0f

    const/high16 v15, 0x42480000    # 50.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/16 v16, 0x0

    const/4 v6, 0x1

    const/high16 v17, 0x40800000    # 4.0f

    if-ne v2, v3, :cond_a

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    shr-int/2addr v2, v6

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v9, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/high16 v18, 0x43140000    # 148.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v4, v1, v18

    int-to-float v4, v4

    invoke-virtual {v2, v3, v9, v12, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v9, 0x43860000    # 268.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v9, 0x435c0000    # 220.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x42780000    # 62.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v9, v12

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_9

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_9

    goto/16 :goto_26

    :cond_9
    move/from16 v16, v2

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v12, 0x41e00000    # 28.0f

    goto/16 :goto_1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x18

    const/high16 v4, 0x41600000    # 14.0f

    if-ne v2, v3, :cond_e

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    add-int/2addr v12, v2

    int-to-float v3, v12

    int-to-float v2, v2

    invoke-virtual {v7, v9, v3, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/high16 v12, 0x43140000    # 148.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v4, v1, v18

    int-to-float v4, v4

    invoke-virtual {v2, v3, v9, v12, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v9, 0x43860000    # 268.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v9, 0x435c0000    # 220.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x42780000    # 62.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v9, v12

    int-to-float v9, v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v4, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_d

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_d

    goto/16 :goto_26

    :cond_d
    move/from16 v16, v2

    const/high16 v4, 0x41600000    # 14.0f

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x12

    const/high16 v12, 0x42280000    # 42.0f

    const/high16 v18, 0x41c80000    # 25.0f

    const/high16 v19, 0x41a00000    # 20.0f

    if-ne v2, v3, :cond_11

    move v10, v1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v10, v1, :cond_5d

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v7, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    rem-int/lit8 v1, v16, 0x2

    if-nez v1, :cond_f

    const/16 v1, 0x34

    goto :goto_4

    :cond_f
    const/16 v1, 0x48

    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x4c

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    add-int/lit8 v6, v1, 0x4c

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x41e00000    # 28.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v10

    int-to-float v11, v13

    invoke-virtual {v2, v4, v5, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v2, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    add-int/lit8 v4, v1, 0x54

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    add-int/lit16 v1, v1, 0xa8

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v10

    int-to-float v6, v11

    invoke-virtual {v2, v4, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    const/16 v5, 0x8c

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v10, v1

    add-int/lit8 v1, v16, 0x1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_10

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_10

    goto/16 :goto_26

    :cond_10
    move/from16 v16, v1

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_14

    move v9, v1

    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v9, v1, :cond_5d

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v2

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-virtual {v7, v2, v3, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    rem-int/lit8 v1, v16, 0x2

    if-nez v1, :cond_12

    const/16 v1, 0x5c

    goto :goto_6

    :cond_12
    const/16 v1, 0x80

    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/16 v3, 0x4c

    int-to-float v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    invoke-virtual {v2, v5, v6, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v9

    int-to-float v3, v3

    const/16 v5, 0xf0

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v1, v16, 0x1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_13

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v1, v2, :cond_13

    goto/16 :goto_26

    :cond_13
    move/from16 v16, v1

    goto/16 :goto_5

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/high16 v3, 0x43820000    # 260.0f

    const/high16 v4, 0x430c0000    # 140.0f

    const/high16 v20, 0x42880000    # 68.0f

    if-ne v2, v6, :cond_17

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/high16 v10, 0x429c0000    # 78.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    shr-int/2addr v10, v6

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v2, v2

    invoke-virtual {v7, v9, v10, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v13, v14

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v13, v14

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_16

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v9, :cond_16

    goto/16 :goto_26

    :cond_16
    move/from16 v16, v2

    goto/16 :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v10, 0x2

    const/high16 v21, 0x40000000    # 2.0f

    if-eq v2, v10, :cond_57

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x1b

    if-ne v2, v10, :cond_18

    goto/16 :goto_22

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v10, 0x3

    const/high16 v22, 0x41000000    # 8.0f

    if-ne v2, v10, :cond_1b

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    const/high16 v11, 0x42500000    # 52.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v13, 0x42400000    # 48.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_1a

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v9, :cond_1a

    goto/16 :goto_26

    :cond_1a
    move/from16 v16, v2

    goto/16 :goto_8

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v10, 0x4

    if-ne v2, v10, :cond_1e

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    shr-int/2addr v2, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    add-int/2addr v10, v2

    int-to-float v10, v10

    int-to-float v2, v2

    invoke-virtual {v7, v9, v10, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    invoke-virtual {v2, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_1d

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v9, :cond_1d

    goto/16 :goto_26

    :cond_1d
    move/from16 v16, v2

    goto/16 :goto_9

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v10, 0x5

    if-ne v2, v10, :cond_21

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v3, v9

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/high16 v10, 0x42780000    # 62.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x427c0000    # 63.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/high16 v10, 0x43860000    # 268.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v9, 0x42580000    # 54.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    const/high16 v10, 0x433c0000    # 188.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x42780000    # 62.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v3, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_20

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_20

    goto/16 :goto_26

    :cond_20
    move/from16 v16, v2

    goto/16 :goto_a

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/4 v10, 0x6

    if-eq v2, v10, :cond_54

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0xa

    if-ne v2, v10, :cond_22

    goto/16 :goto_20

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x1d

    if-ne v2, v10, :cond_24

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    shr-int/2addr v9, v6

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-virtual {v7, v5, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x421c0000    # 39.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x423c0000    # 47.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_23

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v5, :cond_23

    goto/16 :goto_26

    :cond_23
    move/from16 v16, v2

    goto/16 :goto_b

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x21

    if-ne v2, v10, :cond_26

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/high16 v9, 0x42680000    # 58.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    shr-int/2addr v9, v6

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-virtual {v7, v5, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x42900000    # 72.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x421c0000    # 39.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x423c0000    # 47.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v5, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_25

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v5, :cond_25

    goto/16 :goto_26

    :cond_25
    move/from16 v16, v2

    goto/16 :goto_c

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x1e

    if-ne v2, v10, :cond_28

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-int/2addr v1, v2

    int-to-float v2, v1

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_27

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_27

    goto/16 :goto_26

    :cond_27
    move/from16 v16, v2

    goto :goto_d

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x8

    if-ne v2, v10, :cond_2b

    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v10, 0x41300000    # 11.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    shr-int/2addr v10, v6

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v2, v2

    invoke-virtual {v7, v9, v10, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x41880000    # 17.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x421c0000    # 39.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x423c0000    # 47.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_29

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v12, v13

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_2a

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v9, :cond_2a

    goto/16 :goto_26

    :cond_2a
    move/from16 v16, v2

    goto/16 :goto_e

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v10, 0x9

    if-ne v2, v10, :cond_2e

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/high16 v10, 0x420c0000    # 35.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v10

    shr-int/2addr v2, v6

    add-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v7, v10, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    const/high16 v12, 0x43860000    # 268.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v9, v1, v18

    int-to-float v9, v9

    invoke-virtual {v2, v3, v10, v12, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x42380000    # 46.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v12, v1, v18

    int-to-float v12, v12

    invoke-virtual {v2, v3, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v3, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_2d

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_2d

    goto/16 :goto_26

    :cond_2d
    move/from16 v16, v2

    const/high16 v9, 0x42000000    # 32.0f

    goto/16 :goto_f

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0xb

    if-ne v2, v9, :cond_30

    const/4 v2, 0x0

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v1, v3, :cond_5d

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    aget v10, v10, v16

    const/high16 v11, 0x42200000    # 40.0f

    mul-float v10, v10, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v11, v10

    int-to-float v10, v11

    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e4ccccd    # 0.2f

    mul-float v10, v10, v11

    sub-float/2addr v9, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    aget v10, v10, v16

    mul-float v10, v10, v19

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v11, v10

    int-to-float v10, v11

    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v2, v6

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_2f

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_2f

    goto/16 :goto_26

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0xc

    if-ne v2, v9, :cond_33

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    :goto_10
    const/4 v4, 0x4

    if-ge v3, v4, :cond_32

    mul-int v4, v2, v3

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v5, v5, v21

    add-float/2addr v4, v5

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v21

    add-float/2addr v5, v6

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v6, v9

    invoke-virtual {v7, v4, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v1

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v5, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v4, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v5, v11

    invoke-virtual {v6, v9, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v6, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_31

    goto/16 :goto_26

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0xd

    if-ne v2, v9, :cond_35

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v21

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x42f00000    # 120.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v1

    invoke-virtual {v2, v3, v4, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_34

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_34
    const/4 v2, 0x0

    :goto_11
    const/4 v3, 0x3

    if-ge v2, v3, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    mul-int v4, v4, v2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v1, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0xe

    const/high16 v10, 0x41a80000    # 21.0f

    if-eq v2, v9, :cond_50

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0x11

    if-ne v2, v9, :cond_36

    goto/16 :goto_1d

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0xf

    if-ne v2, v9, :cond_39

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-gt v1, v10, :cond_5d

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    int-to-float v10, v10

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    add-int/2addr v11, v2

    int-to-float v11, v11

    int-to-float v13, v2

    invoke-virtual {v7, v10, v11, v13, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v13, 0x42940000    # 74.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v10, v11, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v11, v9

    invoke-virtual {v7, v10, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v13, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v14, 0x42940000    # 74.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x42100000    # 36.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v1

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v15, v15, v17

    int-to-float v15, v15

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v12, v1, v17

    int-to-float v12, v12

    invoke-virtual {v10, v13, v14, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v10, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_37

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v13, 0x42920000    # 73.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x42780000    # 62.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v15, 0x42920000    # 73.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    add-float/2addr v14, v15

    const/high16 v15, 0x42bc0000    # 94.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v10, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v10

    add-int/2addr v1, v10

    add-int/lit8 v10, v16, 0x1

    iget-boolean v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v11, :cond_38

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v10, v11, :cond_38

    goto/16 :goto_26

    :cond_38
    move/from16 v16, v10

    const/high16 v12, 0x42280000    # 42.0f

    goto/16 :goto_12

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0x10

    if-eq v2, v9, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0x17

    if-ne v2, v9, :cond_3a

    goto/16 :goto_1c

    :cond_3a
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v9, 0x15

    if-ne v2, v9, :cond_3c

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    shr-int/lit8 v2, v5, 0x1

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/high16 v9, 0x42680000    # 58.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    shr-int/2addr v9, v6

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-virtual {v7, v5, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x42940000    # 74.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v5, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x42940000    # 74.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x42380000    # 46.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v12, v15

    invoke-virtual {v2, v5, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_3b

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v5, :cond_3b

    goto/16 :goto_26

    :cond_3b
    move/from16 v16, v2

    goto/16 :goto_13

    :cond_3c
    const/16 v9, 0x16

    if-ne v2, v9, :cond_3e

    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    shr-int/2addr v2, v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v5

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-virtual {v7, v5, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x42980000    # 76.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v5, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v5, 0x42980000    # 76.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x42380000    # 46.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v1

    int-to-float v15, v15

    invoke-virtual {v2, v5, v9, v10, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v5, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v5, :cond_3d

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v5, :cond_3d

    goto/16 :goto_26

    :cond_3d
    move/from16 v16, v2

    goto/16 :goto_14

    :cond_3e
    const/16 v9, 0x19

    if-ne v2, v9, :cond_40

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    shr-int/2addr v2, v6

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x435c0000    # 220.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x41e80000    # 29.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_3f

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_3f

    goto/16 :goto_26

    :cond_3f
    move/from16 v16, v2

    goto :goto_15

    :cond_40
    const/16 v9, 0x1a

    if-ne v2, v9, :cond_43

    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    shr-int/2addr v2, v6

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    goto :goto_17

    :cond_41
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v2

    :goto_17
    int-to-float v3, v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v7, v3, v4, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x41e80000    # 29.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v9, 0x42780000    # 62.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x41e80000    # 29.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_42

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_42

    goto/16 :goto_26

    :cond_42
    move/from16 v16, v2

    goto/16 :goto_16

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v9, 0x1c

    if-ne v2, v9, :cond_46

    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v9, v11

    add-int/2addr v9, v2

    int-to-float v9, v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v9

    const/high16 v10, 0x42680000    # 58.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    shr-int/2addr v10, v6

    add-int/2addr v10, v1

    int-to-float v10, v10

    int-to-float v2, v2

    invoke-virtual {v7, v9, v10, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x41880000    # 17.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x421c0000    # 39.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x423c0000    # 47.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_44

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v1

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v1

    int-to-float v12, v13

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v2, v9, v10, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v9, :cond_45

    iget v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v9, :cond_45

    goto/16 :goto_26

    :cond_45
    move/from16 v16, v2

    goto/16 :goto_18

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_48

    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v2, v9

    int-to-float v9, v9

    div-float v9, v9, v21

    add-float/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x41b00000    # 22.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v2

    int-to-float v11, v11

    div-float v11, v11, v21

    add-float/2addr v11, v5

    invoke-virtual {v3, v4, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x41300000    # 11.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v3, v4, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x42680000    # 58.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int v9, v2, v9

    int-to-float v9, v9

    div-float v9, v9, v21

    add-float/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v11, 0x43040000    # 132.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x41980000    # 19.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v2

    int-to-float v11, v11

    div-float v11, v11, v21

    add-float/2addr v5, v11

    invoke-virtual {v3, v4, v9, v10, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_47

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_47

    goto/16 :goto_26

    :cond_47
    move/from16 v16, v2

    goto/16 :goto_19

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4a

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    int-to-float v5, v1

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v10, v2, v10

    int-to-float v10, v10

    div-float v10, v10, v21

    add-float/2addr v10, v5

    iget v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v12, 0x42280000    # 42.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v13, v2

    int-to-float v9, v13

    div-float v9, v9, v21

    add-float/2addr v9, v5

    invoke-virtual {v3, v4, v10, v11, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v3, v4, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v9, v2, v10

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    div-float v9, v9, v21

    add-float/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v11, 0x42ec0000    # 118.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v13, 0x41980000    # 19.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int/2addr v11, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sub-int v11, v2, v13

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v11, v14

    int-to-float v11, v11

    div-float v11, v11, v21

    add-float/2addr v11, v5

    invoke-virtual {v3, v4, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v3, v4, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    add-int/2addr v10, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v10, v9

    int-to-float v9, v10

    div-float v9, v9, v21

    add-float/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v11, 0x43100000    # 144.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v14, 0x41980000    # 19.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v14, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    div-float v14, v14, v21

    add-float/2addr v5, v14

    invoke-virtual {v3, v4, v9, v10, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v3, v4, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v2

    add-int/lit8 v2, v16, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_49

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_49

    goto/16 :goto_26

    :cond_49
    move/from16 v16, v2

    goto/16 :goto_1a

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_5d

    :cond_4b
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const v2, 0x40551eb8    # 3.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_1b
    int-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_26

    :cond_4c
    :goto_1c
    const/4 v2, 0x0

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gt v1, v3, :cond_4f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v3, v3

    invoke-virtual {v7, v4, v6, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v6, 0x42680000    # 58.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    const/high16 v10, 0x42540000    # 53.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v10, v11

    invoke-virtual {v3, v4, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v3, v4, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v3, v3

    invoke-virtual {v7, v4, v6, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v3, :cond_4d

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v2, v3, :cond_4d

    :cond_4f
    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, 0x42540000    # 53.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto/16 :goto_1b

    :cond_50
    :goto_1d
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x429a0000    # 77.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42240000    # 41.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ge v1, v9, :cond_5d

    iget-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_51

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    :cond_51
    iget-object v9, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-int v13, v1, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int v14, v13, v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v9, v11, v12, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7, v9, v11, v12, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_53

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    const/high16 v11, 0x41b00000    # 22.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v3

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    int-to-float v14, v1

    add-float/2addr v11, v14

    add-float v15, v11, v5

    add-float v6, v9, v4

    invoke-virtual {v12, v11, v9, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v12, v12, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v11, v12, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v4

    add-float/2addr v9, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    add-float/2addr v14, v6

    add-float v6, v14, v5

    add-float v12, v9, v4

    invoke-virtual {v11, v14, v9, v6, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v9, v9, v11

    iget-object v11, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v9, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_52
    const/high16 v11, 0x42000000    # 32.0f

    goto :goto_1f

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v6

    const/16 v11, 0x11

    if-ne v6, v11, :cond_52

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    int-to-float v14, v1

    int-to-float v15, v2

    sub-float/2addr v15, v12

    div-float v15, v15, v21

    add-float/2addr v14, v15

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v10, v15

    add-float/2addr v12, v14

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v9, v14, v10, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v6, v6, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1f
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v6, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v1, v13

    const/4 v6, 0x1

    const/high16 v10, 0x41a80000    # 21.0f

    goto/16 :goto_1e

    :cond_54
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_5d

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    const/high16 v9, 0x41100000    # 9.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v2

    int-to-float v6, v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(F)F

    move-result v6

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x1

    shr-int/2addr v9, v10

    add-int/2addr v9, v1

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-virtual {v7, v6, v9, v2, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    const/high16 v9, 0x41880000    # 17.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v6, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v6, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    iget v6, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    const/high16 v9, 0x421c0000    # 39.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x423c0000    # 47.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v11, v1

    int-to-float v11, v11

    invoke-virtual {v2, v6, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v6, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    if-eqz v2, :cond_55

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x41e00000    # 28.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v12, v1

    int-to-float v12, v12

    invoke-virtual {v2, v6, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->checkRtl(Landroid/graphics/RectF;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->rectF:Landroid/graphics/RectF;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v2, v6, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_21

    :cond_55
    const/high16 v11, 0x41e00000    # 28.0f

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v6, v16, 0x1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v2, :cond_56

    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    if-lt v6, v2, :cond_56

    goto/16 :goto_26

    :cond_56
    move/from16 v16, v6

    goto/16 :goto_20

    :cond_57
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v3

    div-int v9, v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_58

    int-to-float v2, v9

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v2, v2, v3

    float-to-int v2, v2

    move v10, v2

    goto :goto_23

    :cond_58
    move v10, v9

    :goto_23
    move v11, v1

    const/4 v12, 0x0

    :cond_59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lt v11, v1, :cond_5a

    iget-boolean v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v1, :cond_5d

    :cond_5a
    const/4 v13, 0x0

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getColumnsCount()I

    move-result v1

    if-ge v13, v1, :cond_5c

    if-nez v12, :cond_5b

    iget v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    if-ge v13, v1, :cond_5b

    goto :goto_25

    :cond_5b
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v9

    mul-int v1, v1, v13

    int-to-float v2, v1

    int-to-float v3, v11

    add-int/2addr v1, v9

    int-to-float v4, v1

    add-int v1, v11, v10

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_25
    add-int/lit8 v13, v13, 0x1

    goto :goto_24

    :cond_5c
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v1, :cond_59

    const/4 v1, 0x2

    if-lt v12, v1, :cond_59

    :cond_5d
    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-le v0, v1, :cond_1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    mul-int p2, p2, v0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getAdditionalHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_1

    :cond_1
    if-le v0, v1, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    mul-int v0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getCellHeight(I)I

    move-result p2

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey3:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGlobalGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setIgnoreHeightCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->ignoreHeightCheck:Z

    return-void
.end method

.method public setIsSingleCell(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    return-void
.end method

.method public setItemsCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->itemsCount:I

    return-void
.end method

.method public setMemberRequestButton(Z)V
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, 0x42080000    # 34.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_0

    sget p1, Lorg/telegram/messenger/R$string;->AddToChannel:I

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AddToGroup:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->memberRequestButtonWidth:F

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->paddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setParentSize(IIF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    iput p2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    iput p3, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    return-void
.end method

.method public setUseHeaderOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->useHeaderOffset:Z

    return-void
.end method

.method public setViewType(I)V
    .locals 5

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->randomParams:[F

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate:Z

    return-void
.end method

.method public skipDrawItemsCount(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->skipDrawItemsCount:I

    return-void
.end method

.method public updateColors()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x4

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    return-void

    :cond_0
    iget v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey1:I

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->colorKey2:I

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->getThemedColor(I)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    if-ne v4, v3, :cond_1

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    if-eq v4, v2, :cond_8

    :cond_1
    iput v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color0:I

    iput v3, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->color1:I

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v5, 0x22

    const/16 v6, 0x11

    const/16 v7, 0xe

    const/16 v8, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-nez v5, :cond_4

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_4

    if-ne v4, v6, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v4, 0x44160000    # 600.0f

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_1
    iput v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    goto :goto_4

    :cond_4
    :goto_2
    const/high16 v4, 0x43480000    # 200.0f

    goto :goto_0

    :cond_5
    :goto_3
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    goto :goto_1

    :goto_4
    iget-boolean v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    if-nez v4, :cond_7

    iget v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    if-eq v4, v8, :cond_7

    if-eq v4, v7, :cond_7

    if-ne v4, v6, :cond_6

    goto :goto_6

    :cond_6
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    int-to-float v13, v5

    filled-new-array {v3, v2, v2, v3}, [I

    move-result-object v14

    new-array v15, v1, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :goto_5
    iput-object v4, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    goto :goto_7

    :cond_7
    :goto_6
    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    int-to-float v5, v5

    filled-new-array {v3, v2, v2, v3}, [I

    move-result-object v22

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v4

    move/from16 v20, v5

    move-object/from16 v23, v1

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_5

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateGradient()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->lastUpdateTime:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x11

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-wide/16 v2, 0x10

    :cond_1
    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    const-wide/16 v2, 0x0

    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentWidth:I

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :cond_3
    iget v5, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    const/16 v6, 0x23

    if-ne v5, v6, :cond_5

    :cond_4
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentHeight:I

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :cond_6
    iput-wide v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->lastUpdateTime:J

    iget-boolean v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->isSingleCell:Z

    const/high16 v1, 0x43c80000    # 400.0f

    if-nez v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->viewType:I

    const/16 v6, 0xd

    if-eq v0, v6, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v6, 0xe

    if-eq v0, v6, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FlickerLoadingView;->getViewType()I

    move-result v0

    const/16 v6, 0x11

    if-ne v0, v6, :cond_7

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v0, v0

    int-to-long v6, v5

    mul-long v2, v2, v6

    long-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v2, v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_2

    :cond_9
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v0, v0

    int-to-long v5, v4

    mul-long v2, v2, v5

    long-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v0, v4, :cond_a

    iget v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradientWidth:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->totalTranslation:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->parentXOffset:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/FlickerLoadingView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_b
    return-void
.end method
