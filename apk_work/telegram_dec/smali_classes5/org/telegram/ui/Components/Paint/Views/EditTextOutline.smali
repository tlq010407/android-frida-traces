.class public Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# instance fields
.field public framePadding:Landroid/graphics/RectF;

.field private isFrameDirty:Z

.field private lastFrameRoundRadius:F

.field private lines:[Landroid/graphics/RectF;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mFrameColor:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mUpdateCachedBitmap:Z

.field private paint:Landroid/graphics/Paint;

.field private path:Lorg/telegram/ui/Components/CornerPath;

.field private textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    new-instance p1, Lorg/telegram/ui/Components/CornerPath;

    invoke-direct {p1}, Lorg/telegram/ui/Components/CornerPath;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Lorg/telegram/ui/Components/CornerPath;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/high16 v1, 0xa0000

    or-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameRoundRadius(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setFrameRoundRadius(F)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lastFrameRoundRadius:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lastFrameRoundRadius:F

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int v7, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/high16 v4, 0x41380000    # 11.5f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v3

    :cond_1
    move-object v8, v3

    new-instance v3, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    array-length v3, v3

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-eq v3, v5, :cond_6

    :cond_5
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/RectF;

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    iput-boolean v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    :cond_6
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_d

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-ge v3, v7, :cond_a

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v7, v3

    if-nez v8, :cond_7

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    aput-object v8, v7, v3

    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    neg-float v8, v8

    div-float/2addr v8, v5

    invoke-virtual {v7, v8, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    iget v8, v7, Landroid/graphics/RectF;->top:F

    const v9, 0x3f99999a    # 1.2f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v3

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v7, v7, v3

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iput v8, v7, Landroid/graphics/RectF;->left:F

    :goto_2
    if-lez v3, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v7, v2

    if-lez v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v8, v7, v8

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iput v7, v8, Landroid/graphics/RectF;->bottom:F

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v0

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v0

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v9, v9, v0

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v8

    iput v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CornerPath;->rewind()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    div-float/2addr v0, v5

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v3, v3, v0

    const/4 v5, 0x1

    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v8, v7

    if-ge v5, v8, :cond_15

    add-int/lit8 v8, v5, -0x1

    aget-object v8, v7, v8

    aget-object v7, v7, v5

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_14

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_e

    goto/16 :goto_8

    :cond_e
    iget v9, v8, Landroid/graphics/RectF;->left:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v9, v9, v3

    if-gez v9, :cond_f

    iget v9, v7, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    iput v9, v7, Landroid/graphics/RectF;->left:F

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    :goto_5
    iget v10, v8, Landroid/graphics/RectF;->right:F

    iget v11, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_10

    iget v9, v7, Landroid/graphics/RectF;->right:F

    iget v10, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iput v9, v7, Landroid/graphics/RectF;->right:F

    const/4 v9, 0x1

    :cond_10
    if-eqz v9, :cond_14

    move v7, v5

    :goto_6
    if-lt v7, v4, :cond_14

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    add-int/lit8 v9, v7, -0x1

    aget-object v9, v8, v9

    aget-object v8, v8, v7

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_13

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_11

    goto :goto_7

    :cond_11
    iget v10, v9, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_12

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v9, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iput v10, v8, Landroid/graphics/RectF;->left:F

    :cond_12
    iget v10, v9, Landroid/graphics/RectF;->right:F

    iget v11, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v3

    if-gez v10, :cond_13

    iget v10, v8, Landroid/graphics/RectF;->right:F

    iget v11, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iput v10, v8, Landroid/graphics/RectF;->right:F

    :cond_13
    :goto_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_14
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_15
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    array-length v4, v3

    if-ge v1, v4, :cond_17

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_16

    goto :goto_a

    :cond_16
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Lorg/telegram/ui/Components/CornerPath;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->lines:[Landroid/graphics/RectF;

    aget-object v4, v4, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/CornerPath;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Lorg/telegram/ui/Components/CornerPath;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CornerPath;->closeRects()V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameRoundRadius(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->path:Lorg/telegram/ui/Components/CornerPath;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    :goto_b
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onSizeChanged(IIII)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mCache:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/EditTextEffects;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setFrameColor(I)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v1, -0x1

    const/high16 v2, 0x40e00000    # 7.0f

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x41980000    # 19.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v3, v4, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mFrameColor:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    :cond_2
    float-to-double v2, p1

    const-wide v4, 0x3febd70a3d70a3d7L    # 0.87

    cmpl-double p1, v2, v4

    if-lez p1, :cond_3

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->isFrameDirty:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mStrokeWidth:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->mUpdateCachedBitmap:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
