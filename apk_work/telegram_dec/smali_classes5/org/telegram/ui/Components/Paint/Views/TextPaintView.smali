.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    }
.end annotation


# instance fields
.field private align:I

.field private baseFontSize:I

.field private currentType:I

.field private disableAutoresize:Z

.field private editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

.field private lastTypefaceKey:Ljava/lang/String;

.field private maxFontSize:I

.field private minFontSize:I

.field private onFontChange:Ljava/lang/Runnable;

.field private swatch:Lorg/telegram/ui/Components/Paint/Swatch;

.field private typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;


# direct methods
.method public static synthetic $r8$lambda$BR1cEiz1nfpgylGnIuX_Ni-9eP8(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lambda$beginEditing$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Lorg/telegram/ui/Components/Point;)V
    .locals 7

    .line 0
    iget v3, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v5

    iget v6, p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setAlign(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/16 p1, 0x13

    goto :goto_0

    :cond_0
    const/16 p1, 0x15

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getAlign()I

    move-result p1

    if-eq p1, p3, :cond_4

    if-eq p1, p2, :cond_2

    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_2
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x3

    goto :goto_2

    :cond_4
    const/4 p2, 0x4

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;ILjava/lang/CharSequence;Lorg/telegram/ui/Components/Paint/Swatch;I)V
    .locals 3

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    sget-object p2, Lorg/telegram/ui/Components/Paint/PaintTypeface;->ROBOTO_MEDIUM:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/high16 p3, 0x40e00000    # 7.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    int-to-float p3, p3

    const v0, 0x3ecccccd    # 0.4f

    mul-float p3, p3, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget p3, p5, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/high16 v0, 0x11000000

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/high16 v0, 0x10000000

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p3, p4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p4, 0x4000

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/16 p4, 0x33

    const/4 v0, -0x2

    invoke-static {v0, v0, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_1

    goto :goto_2

    :cond_1
    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {p1, p2}, Lorg/telegram/messenger/video/TextureRenderer$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/EditText;I)V

    :cond_2
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V

    invoke-virtual {p0, p6}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setType(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->minFontSize:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->maxFontSize:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->disableAutoresize:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->onFontChange:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    return-void
.end method

.method private synthetic lambda$beginEditing$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private updateHint()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    sget v1, Lorg/telegram/messenger/R$string;->TextPlaceholder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v1, 0x60ffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public beginEditing()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected bridge synthetic createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    move-result-object v0

    return-object v0
.end method

.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
    .locals 2

    .line 0
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V

    return-object v0
.end method

.method public disableAutoresize(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->disableAutoresize:Z

    return-void
.end method

.method public endEditing()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->align:I

    return v0
.end method

.method public getBaseFontSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    return v0
.end method

.method public getEditText()Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object v0
.end method

.method public getFocusedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    return-object v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v3

    mul-float v2, v2, v3

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v3, v5

    mul-float v3, v3, v0

    mul-float v1, v1, v0

    add-float/2addr v1, v3

    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    mul-float v6, v6, v0

    sub-float/2addr v1, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getExtendedPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    mul-float v2, v2, v0

    invoke-direct {v5, v3, v6, v1, v2}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method protected getStickyPaddingBottom()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return v0
.end method

.method protected getStickyPaddingLeft()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_0
    return v0
.end method

.method protected getStickyPaddingRight()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    return v0
.end method

.method protected getStickyPaddingTop()F
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->framePadding:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    return v0
.end method

.method public getSwatch()Lorg/telegram/ui/Components/Paint/Swatch;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    return v0
.end method

.method public getTypeface()Lorg/telegram/ui/Components/Paint/PaintTypeface;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setAlign(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->align:I

    return-void
.end method

.method public setBaseFontSize(I)V
    .locals 5

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->baseFontSize:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v2, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/messenger/Emoji$EmojiSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/Emoji$EmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    aget-object v3, v0, v2

    const v4, 0x3f59999a    # 0.85f

    iput v4, v3, Lorg/telegram/messenger/Emoji$EmojiSpan;->scale:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateForce()V

    :cond_2
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setMinMaxFontSize(IILjava/lang/Runnable;)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->minFontSize:I

    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->maxFontSize:I

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->onFontChange:Ljava/lang/Runnable;

    return-void
.end method

.method public setSwatch(Lorg/telegram/ui/Components/Paint/Swatch;)V
    .locals 0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Swatch;->clone()Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateHint()V

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->updateColor()V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 3

    .line 0
    invoke-static {}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->get()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/PaintTypeface;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V

    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lastTypefaceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public setTypeface(Lorg/telegram/ui/Components/Paint/PaintTypeface;)V
    .locals 1

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->typeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public updateColor()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->currentType:I

    const/4 v3, -0x1

    const/high16 v4, -0x1000000

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->swatch:Lorg/telegram/ui/Components/Paint/Swatch;

    iget v0, v0, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    const/high16 v6, 0x3e800000    # 0.25f

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_2

    const/high16 v3, -0x67000000

    goto :goto_0

    :cond_2
    const v3, -0x66000001

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_4

    const/high16 v3, -0x1000000

    :cond_4
    :goto_0
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;->setFrameColor(I)V

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->editText:Lorg/telegram/ui/Components/Paint/Views/EditTextOutline;

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public updateTypeface()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->lastTypefaceKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/TextPaintView;->setTypeface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
