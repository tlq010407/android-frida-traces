.class public Lorg/telegram/ui/Components/HintEditText;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "SourceFile"


# instance fields
.field protected hintPaint:Landroid/text/TextPaint;

.field private hintText:Ljava/lang/String;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v9, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge v9, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :goto_1
    move v10, v2

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v3, v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/HintEditText;->shouldDrawBehindText(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge v9, v2, :cond_1

    add-float/2addr v1, v10

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v7, v2, v3

    invoke-virtual {p0, v9, p1, v1, v7}, Lorg/telegram/ui/Components/HintEditText;->onPreDrawHintCharacter(ILandroid/graphics/Canvas;FF)V

    iget-object v3, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    add-int/lit8 v5, v9, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v4, v9

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    add-float/2addr v1, v10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/EditTextEffects;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    return-void
.end method

.method protected onPreDrawHintCharacter(ILandroid/graphics/Canvas;FF)V
    .locals 0

    return-void
.end method

.method public onTextChange()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/HintEditText;->hintText:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/HintEditText;->onTextChange()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/HintEditText;->hintPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method protected shouldDrawBehindText(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
