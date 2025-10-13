.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPicker"
.end annotation


# instance fields
.field private alpha:F

.field private alphaGradient:Landroid/graphics/LinearGradient;

.field private alphaPressed:Z

.field private circleDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private circlePressed:Z

.field private colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private colorGradient:Landroid/graphics/LinearGradient;

.field private colorHSV:[F

.field private colorPressed:Z

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelRadius:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private hsvTemp:[F

.field private linearLayout:Landroid/widget/LinearLayout;

.field private final paramValueSliderWidth:I

.field final synthetic this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private valueSliderPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$3gFCoh40y0U6cWAAdKaY8DNqa6E(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    const/4 v4, 0x4

    new-array v5, v4, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x3

    new-array v8, v7, [F

    fill-array-data v8, :array_0

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    iput v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    new-array v6, v7, [F

    iput-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lorg/telegram/messenger/R$drawable;->knob_shadow:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/16 v11, 0x31

    invoke-static {v10, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v11, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v11, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v11, v10, v8

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const v12, -0xdededf

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v10, v9, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputField:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogInputFieldActivated:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v10, v12, v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v8, :cond_0

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const-string v11, "red"

    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    if-ne v8, v9, :cond_1

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const-string v11, "green"

    goto :goto_1

    :cond_1
    if-ne v8, v11, :cond_2

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const-string v11, "blue"

    goto :goto_1

    :cond_2
    if-ne v8, v7, :cond_3

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const-string v11, "alpha"

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    if-ne v8, v7, :cond_4

    const/4 v11, 0x6

    goto :goto_3

    :cond_4
    const/4 v11, 0x5

    :goto_3
    const/high16 v12, 0x10000000

    or-int/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v11, v9, [Landroid/text/InputFilter;

    aput-object v10, v11, v6

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v11, v11, v8

    if-eq v8, v7, :cond_5

    const/high16 v12, 0x41800000    # 16.0f

    const/high16 v17, 0x41800000    # 16.0f

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    const/16 v18, 0x0

    const/16 v13, 0x37

    const/16 v14, 0x24

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    new-instance v11, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;

    invoke-direct {v11, v0, v1, v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    new-instance v11, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    add-int/2addr v8, v9

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method private createColorWheelBitmap(II)Landroid/graphics/Bitmap;
    .locals 12

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xd

    new-array v2, v1, [I

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    mul-int/lit8 v7, v6, 0x1e

    add-int/lit16 v7, v7, 0xb4

    rem-int/lit16 v7, v7, 0x168

    int-to-float v7, v7

    aput v7, v3, v5

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aget v1, v2, v5

    const/16 v3, 0xc

    aput v1, v2, v3

    new-instance v1, Landroid/graphics/SweepGradient;

    div-int/2addr p1, v4

    int-to-float p1, p1

    div-int/2addr p2, v4

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v2, Landroid/graphics/RadialGradient;

    iget v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v8, v3

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object v5, v2

    move v6, p1

    move v7, p2

    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v3, Landroid/graphics/ComposeShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private drawPointerArrow(Landroid/graphics/Canvas;III)V
    .locals 5

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    sub-int v3, p3, v0

    add-int v4, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 v0, 0x41300000    # 11.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p4, 0x41100000    # 9.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startColorChange(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1200(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1202(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1302(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1400(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x33

    :goto_0
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1500(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/view/ViewGroup;

    move-result-object v4

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_3

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    new-array v6, v0, [F

    aput p1, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v1

    aput-object p1, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1300(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v8, 0x2

    div-int/2addr v1, v8

    iget v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v8

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v5, v1, v4

    int-to-float v5, v5

    sub-int v4, v2, v4

    int-to-float v4, v4

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    neg-double v9, v9

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    const/4 v11, 0x1

    aget v3, v3, v11

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    double-to-int v3, v9

    add-int/2addr v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    aget v10, v9, v11

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    iget v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v12

    double-to-int v5, v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    aget v9, v9, v4

    aput v9, v6, v4

    aput v10, v6, v11

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    invoke-static {v6}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    invoke-direct {v0, v7, v3, v5, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    add-int/2addr v1, v3

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    add-int v10, v1, v4

    sub-int/2addr v2, v3

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v12, v1, 0x2

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v14, v10

    int-to-float v15, v2

    add-int v3, v10, v11

    int-to-float v3, v3

    add-int v4, v2, v12

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/high16 v6, -0x1000000

    filled-new-array {v6, v5}, [I

    move-result-object v18

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    move-object v13, v1

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v3, v10

    int-to-float v15, v2

    add-int v1, v10, v11

    int-to-float v4, v1

    add-int/2addr v2, v12

    int-to-float v14, v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v15

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v21, v11, 0x2

    add-int v1, v10, v21

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    aget v3, v2, v8

    int-to-float v12, v12

    mul-float v3, v3, v12

    add-float/2addr v3, v15

    float-to-int v3, v3

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-direct {v0, v7, v1, v3, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v10, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    const v8, 0xffffff

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->hsvTemp:[F

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v3, v10

    add-int v4, v10, v11

    int-to-float v4, v4

    and-int v5, v1, v8

    filled-new-array {v1, v5}, [I

    move-result-object v18

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    move-object v13, v2

    move v5, v14

    move v14, v3

    move/from16 v22, v15

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    goto :goto_0

    :cond_1
    move v5, v14

    move/from16 v22, v15

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v2, v10

    add-int/2addr v11, v10

    int-to-float v4, v11

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int v10, v10, v21

    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    sub-float/2addr v9, v1

    mul-float v9, v9, v12

    add-float v15, v22, v9

    float-to-int v1, v15

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    and-int/2addr v2, v8

    iget v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    invoke-direct {v0, v7, v10, v1, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;III)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->createColorWheelBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    iget v7, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v2

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v1, v6

    sub-int v9, v5, v7

    mul-int v10, v8, v8

    mul-int v11, v9, v9

    add-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    if-nez v12, :cond_2

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    if-nez v12, :cond_4

    iget-boolean v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    if-nez v12, :cond_4

    iget v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v13, v12

    cmpg-double v12, v10, v13

    if-gtz v12, :cond_4

    :cond_2
    iget v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v12, v12

    cmpl-double v14, v10, v12

    if-lez v14, :cond_3

    move-wide v10, v12

    :cond_3
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    iget-object v12, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    int-to-double v13, v9

    int-to-double v8, v8

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    const-wide v13, 0x4066800000000000L    # 180.0

    add-double/2addr v8, v13

    double-to-float v8, v8

    aput v8, v12, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    iget v9, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    int-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    double-to-float v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v8, v4

    const/4 v8, 0x0

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    iput-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    :cond_4
    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    const/high16 v9, 0x40000000    # 2.0f

    if-nez v8, :cond_5

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    if-nez v8, :cond_8

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    if-nez v8, :cond_8

    iget v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    add-int v10, v6, v8

    iget v11, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    add-int v12, v10, v11

    if-lt v1, v12, :cond_8

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    if-gt v1, v10, :cond_8

    sub-int v10, v7, v8

    if-lt v5, v10, :cond_8

    add-int/2addr v8, v7

    if-gt v5, v8, :cond_8

    :cond_5
    iget v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int v10, v7, v8

    sub-int v10, v5, v10

    int-to-float v10, v10

    int-to-float v8, v8

    mul-float v8, v8, v9

    div-float/2addr v10, v8

    const/4 v8, 0x0

    cmpg-float v11, v10, v8

    if-gez v11, :cond_6

    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v8

    if-lez v11, :cond_7

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_7
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    aput v10, v8, v2

    iput-boolean v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    :cond_8
    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    const/4 v10, 0x4

    if-nez v8, :cond_9

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    if-nez v8, :cond_c

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    if-nez v8, :cond_c

    iget v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    add-int/2addr v6, v8

    iget v11, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->paramValueSliderWidth:I

    mul-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v6

    if-lt v1, v12, :cond_c

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v6, v11

    if-gt v1, v6, :cond_c

    sub-int v1, v7, v8

    if-lt v5, v1, :cond_c

    add-int/2addr v8, v7

    if-gt v5, v8, :cond_c

    :cond_9
    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorWheelRadius:I

    sub-int/2addr v7, v1

    sub-int/2addr v5, v7

    int-to-float v5, v5

    int-to-float v1, v1

    mul-float v1, v1, v9

    div-float/2addr v5, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v14, v1, v5

    iput v14, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    const/4 v5, 0x0

    cmpg-float v6, v14, v5

    if-gez v6, :cond_a

    iput v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    goto :goto_2

    :cond_a
    cmpl-float v5, v14, v1

    if-lez v5, :cond_b

    iput v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    :cond_b
    :goto_2
    iput-boolean v4, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaPressed:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorPressed:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->circlePressed:Z

    if-eqz v1, :cond_14

    :cond_d
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->startColorChange(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getColor()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()I

    move-result v6

    if-nez v5, :cond_e

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    if-eq v6, v7, :cond_f

    :cond_e
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    if-eq v6, v7, :cond_f

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    if-eq v6, v7, :cond_f

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    if-eq v6, v7, :cond_f

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    if-eq v6, v7, :cond_f

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    if-ne v6, v7, :cond_10

    :cond_f
    const/high16 v6, -0x1000000

    or-int/2addr v1, v6

    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeEditorView;->access$1100(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v6, v1, v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_11
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$902(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v5, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v5, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$902(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_14
    return v4
.end method

.method public setColor(I)V
    .locals 9

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$902(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    invoke-static {v0, v6}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$902(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alphaGradient:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    int-to-float v0, v3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->alpha:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
