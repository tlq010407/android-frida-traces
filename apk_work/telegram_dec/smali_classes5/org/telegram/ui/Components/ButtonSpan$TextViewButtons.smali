.class public Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ButtonSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewButtons"
.end annotation


# instance fields
.field buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

.field private pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public addButton(Lorg/telegram/ui/Components/ButtonSpan;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

    return-void
.end method

.method public findSpan(FI)Lorg/telegram/ui/Components/ButtonSpan;
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    const-class v5, Lorg/telegram/ui/Components/ButtonSpan;

    invoke-interface {v3, v4, p2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/telegram/ui/Components/ButtonSpan;

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_3

    aget-object v5, p2, v4

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-gt v6, v2, :cond_2

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-lt v6, v2, :cond_2

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_2

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    cmpl-float v6, v6, p1

    if-ltz v6, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroid/text/SpannableString;

    const-string p2, " btn"

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p3

    const/4 p4, 0x1

    const/16 p5, 0x21

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonSpan;->getSize()I

    move-result v0

    sub-int/2addr p5, v0

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p4, p5, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->buttonToBeAdded:Lorg/telegram/ui/Components/ButtonSpan;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->findSpan(FI)Lorg/telegram/ui/Components/ButtonSpan;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0, v3}, Lorg/telegram/ui/Components/ButtonSpan;->setPressed(Landroid/view/View;Z)V

    return v3

    :cond_0
    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    invoke-virtual {v0, p0, v2}, Lorg/telegram/ui/Components/ButtonSpan;->setPressed(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    iput-object v4, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0, v2}, Lorg/telegram/ui/Components/ButtonSpan;->setPressed(Landroid/view/View;Z)V

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    invoke-static {v0}, Lorg/telegram/ui/Components/ButtonSpan;->access$000(Lorg/telegram/ui/Components/ButtonSpan;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    invoke-static {v0}, Lorg/telegram/ui/Components/ButtonSpan;->access$000(Lorg/telegram/ui/Components/ButtonSpan;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonSpan$TextViewButtons;->pressedSpan:Lorg/telegram/ui/Components/ButtonSpan;

    if-nez v0, :cond_5

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method
