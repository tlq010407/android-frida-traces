.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SliderCell"
.end annotation


# instance fields
.field private isInvalidatingColor:Z

.field private mode:I

.field private sliderView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

.field private titleView:Landroid/widget/TextView;

.field private valueView:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$eQW2gVHHzA80k4NfetuASsF7oAA(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gQTF5tYLPwl757-tpzLH0EfU8Lc(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 10

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x3

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->sliderView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;

    const/high16 v8, 0x429c0000    # 78.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const v1, 0x19ffffff

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    sget v1, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setInputType(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$1;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    new-instance p2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    new-instance p2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const/16 p2, 0x24

    const/16 v0, 0x55

    const/16 v1, 0x48

    invoke-static {v1, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->isInvalidatingColor:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->mode:I

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bind(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->mode:I

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->sliderView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->setMode(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PaintPaletteSlidersBlue:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PaintPaletteSlidersGreen:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->titleView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->PaintPaletteSlidersRed:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->invalidateColor()V

    return-void
.end method

.method public invalidateColor()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->isInvalidatingColor:Z

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->sliderView:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorSliderView;->invalidateColor()V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->mode:I

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_1

    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->valueView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->isInvalidatingColor:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
