.class public Lorg/telegram/ui/Cells/TextColorCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static colorPaint:Landroid/graphics/Paint;

.field public static final colors:[I

.field public static final colorsToSave:[I


# instance fields
.field private currentColor:I

.field private needDivider:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xfbbbc
        -0x71ff
        -0x31e1
        -0x8629a0
        -0xbf120a
        -0xb94101
        -0x2d8b07
        -0xb06a
        -0x444445
    .end array-data

    :array_1
    .array-data 4
        -0x10000
        -0x71ff
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0x2d8b07
        -0xff01
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/TextColorCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    :goto_0
    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_2

    const/4 v0, 0x5

    :cond_2
    or-int/lit8 v3, v0, 0x30

    const/high16 v6, 0x41a80000    # 21.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x41a80000    # 21.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

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
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-eqz v0, :cond_4

    sget-object v1, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x42040000    # 33.0f

    if-eqz v0, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_2
    int-to-float v0, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/Cells/TextColorCell;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
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

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setEnabled(ZLjava/util/ArrayList;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_0
    new-array v7, v1, [F

    aput v6, v7, v0

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    new-array p1, v1, [F

    aput v2, p1, v0

    invoke-static {p0, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public setTextAndColor(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    iput p2, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
