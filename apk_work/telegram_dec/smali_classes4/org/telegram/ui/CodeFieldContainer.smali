.class public abstract Lorg/telegram/ui/CodeFieldContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field bitmapPaint:Landroid/graphics/Paint;

.field public codeField:[Lorg/telegram/ui/CodeNumberField;

.field public ignoreOnTextChange:Z

.field public isFocusSuppressed:Z

.field paint:Landroid/graphics/Paint;

.field strokeWidth:F


# direct methods
.method public static synthetic $r8$lambda$bc3bVopa_Atk62RspIDNvpQvmQI(Lorg/telegram/ui/CodeFieldContainer;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CodeFieldContainer;->lambda$setNumbersCount$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CodeFieldContainer;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/CodeFieldContainer;->bitmapPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private synthetic lambda$setNumbersCount$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/CodeFieldContainer;->processNextPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/CodeNumberField;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/CodeNumberField;

    iget-boolean v3, p0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/ui/CodeNumberField;->getSuccessProgress()F

    move-result v3

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2}, Lorg/telegram/ui/CodeNumberField;->getFocusedProgress()F

    move-result v8

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v2}, Lorg/telegram/ui/CodeNumberField;->getErrorProgress()F

    move-result v8

    invoke-static {v6, v7, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/CodeFieldContainer;->paint:Landroid/graphics/Paint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v6, v8, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer;->strokeWidth:F

    invoke-virtual {v6, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    cmpl-float v1, v3, v5

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/CodeFieldContainer;->strokeWidth:F

    invoke-virtual {v2}, Lorg/telegram/ui/CodeNumberField;->getSuccessScaleProgress()F

    move-result v2

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v6, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/CodeFieldContainer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    instance-of v0, p2, Lorg/telegram/ui/CodeNumberField;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/CodeNumberField;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lorg/telegram/ui/CodeNumberField;->enterAnimation:F

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, p0, Lorg/telegram/ui/CodeFieldContainer;->strokeWidth:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-boolean v2, v0, Lorg/telegram/ui/CodeNumberField;->replaceAnimation:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    mul-float v2, v1, v5

    add-float/2addr v2, v5

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v1, v6

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {p1, v2, v2, v1, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v1, v3, v1

    mul-float v2, v2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget p2, v0, Lorg/telegram/ui/CodeNumberField;->exitAnimation:F

    cmpg-float p3, p2, v3

    if-gez p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v3, p2

    mul-float p2, v3, v5

    add-float/2addr p2, v5

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v4

    add-float/2addr p3, p4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr p4, v1

    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lorg/telegram/ui/CodeFieldContainer;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float v3, v3, p3

    float-to-int p3, v3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, v0, Lorg/telegram/ui/CodeNumberField;->exitBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/CodeFieldContainer;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected abstract processNextPressed()V
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNumbersCount(II)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p2, p1

    if-ge v1, p2, :cond_7

    aget-object p1, p1, v1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-array v0, p1, [Lorg/telegram/ui/CodeNumberField;

    iput-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    new-instance v3, Lorg/telegram/ui/CodeFieldContainer$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, p1}, Lorg/telegram/ui/CodeFieldContainer$1;-><init>(Lorg/telegram/ui/CodeFieldContainer;Landroid/content/Context;II)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setInputType(I)V

    :goto_4
    const/16 v2, 0x2a

    const/16 v3, 0xa

    if-ne p2, v3, :cond_4

    const/16 v4, 0x2f

    const/16 v5, 0x2a

    const/16 v6, 0x2f

    goto :goto_5

    :cond_4
    const/16 v3, 0xb

    const/16 v4, 0x22

    if-ne p2, v3, :cond_5

    const/16 v2, 0x1c

    const/4 v3, 0x5

    const/16 v5, 0x1c

    const/16 v6, 0x22

    goto :goto_5

    :cond_5
    const/4 v3, 0x7

    const/16 v5, 0x22

    const/16 v6, 0x2a

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    add-int/lit8 v4, p1, -0x1

    if-eq v0, v4, :cond_6

    move v10, v3

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    new-instance v3, Lorg/telegram/ui/CodeFieldContainer$2;

    invoke-direct {v3, p0, v0, p1}, Lorg/telegram/ui/CodeFieldContainer$2;-><init>(Lorg/telegram/ui/CodeFieldContainer;II)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v0

    new-instance v3, Lorg/telegram/ui/CodeFieldContainer$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CodeFieldContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CodeFieldContainer;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_7
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge p2, v2, :cond_2

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move p2, v0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, p2

    sub-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
