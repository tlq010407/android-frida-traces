.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SlidersPickerView"
.end annotation


# instance fields
.field private blue:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

.field private green:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

.field private hexEdit:Landroid/widget/EditText;

.field private isInvalidatingColor:Z

.field private red:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$kgdyBIGKnuHzSHjNlux6qWMC25o(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sB_NLW7ur4GL9oonFr5FtyFSJtw(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 13

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->red:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->bind(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->red:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->green:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->bind(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->green:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->blue:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->bind(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->blue:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x66000001

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v6, Lorg/telegram/messenger/R$string;->PaintPaletteSlidersHexColor:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v12, 0x0

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v2, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const v2, 0x19ffffff

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    sget v2, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    new-instance v0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$1;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    new-instance p2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    new-instance p2, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    const/16 p2, 0x48

    const/16 v0, 0x24

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->isInvalidatingColor:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

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
.method public invalidateColor()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->isInvalidatingColor:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->red:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->invalidateColor()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->green:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->invalidateColor()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->blue:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SliderCell;->invalidateColor()V

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    const-string v4, "0"

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->hexEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v0, v2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$SlidersPickerView;->isInvalidatingColor:Z

    return-void
.end method
