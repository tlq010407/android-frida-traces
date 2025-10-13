.class public Lorg/telegram/ui/Components/ColorPicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;,
        Lorg/telegram/ui/Components/ColorPicker$RadioButton;
    }
.end annotation


# instance fields
.field private addButton:Landroid/widget/ImageView;

.field private circleDrawable:Landroid/graphics/drawable/Drawable;

.field private circlePaint:Landroid/graphics/Paint;

.field private circlePressed:Z

.field private clearButton:Landroid/widget/ImageView;

.field private colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private colorGradient:Landroid/graphics/LinearGradient;

.field private colorHSV:[F

.field private colorPressed:Z

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelWidth:I

.field private colorsAnimator:Landroid/animation/AnimatorSet;

.field private colorsCount:I

.field private currentResetType:I

.field private final delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

.field private hsvTemp:[F

.field ignoreTextChange:Z

.field private lastUpdateTime:J

.field private linePaint:Landroid/graphics/Paint;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private maxBrightness:F

.field private maxColorsCount:I

.field private maxHsvBrightness:F

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private minBrightness:F

.field private minHsvBrightness:F

.field private myMessagesColor:Z

.field private pressedMoveProgress:F

.field private prevSelectedColor:I

.field private radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

.field private radioContainer:Landroid/widget/FrameLayout;

.field private resetButton:Landroid/widget/TextView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedColor:I

.field private sliderRect:Landroid/graphics/RectF;

.field private valueSliderPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$8qK-y6EIyWkzxHw2VODz1vScGAY(Lorg/telegram/ui/Components/ColorPicker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$InqtIePNoE4CsS2SG6_Q5sSXZIs(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MKFloAoZQIqBkwJxoCpBUNw1G_4(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QbbY_eDTH0hsopX-tnIMWQDZQ80(Lorg/telegram/ui/Components/ColorPicker;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TcBoxDxv1A4EiFoWAvbnERI4QGU(Lorg/telegram/ui/Components/ColorPicker;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_OhIXHAZF3dgguGwzpJR7N9yFg(Lorg/telegram/ui/Components/ColorPicker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->lambda$provideThemeDescriptions$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$lEfJx-BjpX-vl4VbfqgV_vwhKHg(Lorg/telegram/ui/Components/ColorPicker;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjAvlKcD2j1MWJgo24_Pn-5Ob-s(Lorg/telegram/ui/Components/ColorPicker;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    const/4 v2, 0x4

    new-array v3, v2, [Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    iput-object v3, v0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iput v3, v0, Lorg/telegram/ui/Components/ColorPicker;->maxColorsCount:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    iput-object v7, v0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    new-array v7, v6, [F

    iput-object v7, v0, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    iput v5, v0, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    iput v4, v0, Lorg/telegram/ui/Components/ColorPicker;->minBrightness:F

    iput v5, v0, Lorg/telegram/ui/Components/ColorPicker;->maxBrightness:F

    iput v4, v0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    iput v5, v0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    move-object/from16 v5, p3

    iput-object v5, v0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    const/4 v5, 0x2

    new-array v7, v5, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v7, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->knob_shadow:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->circlePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->linePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x12000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v8, Lorg/telegram/ui/Components/ColorPicker$1;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/ColorPicker$1;-><init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v14, 0x41880000    # 17.0f

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x42580000    # 54.0f

    const/16 v11, 0x33

    const/high16 v12, 0x41d80000    # 27.0f

    const/high16 v13, -0x3f400000    # -6.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->radioContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->radioContainer:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    const/16 v9, 0xae

    const/high16 v10, 0x41f00000    # 30.0f

    const/16 v11, 0x31

    const/high16 v12, 0x42900000    # 72.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_1

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    invoke-direct {v10, v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v9, v9, v8

    iget v10, v0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    if-ne v10, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9, v10, v7}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setChecked(ZZ)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->radioContainer:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v10, v10, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v11, 0x1e

    const/high16 v12, 0x41f00000    # 30.0f

    const/16 v13, 0x30

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v9, v9, v8

    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v8, v3

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v10, v9

    const/4 v11, 0x0

    if-ge v8, v10, :cond_6

    rem-int/lit8 v10, v8, 0x2

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v13, 0x41800000    # 16.0f

    if-nez v10, :cond_2

    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$2;

    invoke-direct {v10, v0, v1, v8}, Lorg/telegram/ui/Components/ColorPicker$2;-><init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;I)V

    aput-object v10, v9, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const-string v10, "#"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v7, v10, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$3;

    invoke-direct {v10, v0, v1, v8}, Lorg/telegram/ui/Components/ColorPicker$3;-><init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;I)V

    aput-object v10, v9, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v11, v3, [Landroid/text/InputFilter;

    aput-object v10, v11, v7

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const-string v10, "8BC6ED"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v7, v10, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v10, v10, v8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v14, 0x47

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$4;

    invoke-direct {v10, v0, v8}, Lorg/telegram/ui/Components/ColorPicker$4;-><init>(Lorg/telegram/ui/Components/ColorPicker;I)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    new-instance v10, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v3, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const/high16 v10, 0x3fc00000    # 1.5f

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-direct {v0, v10}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const v10, 0x80080

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const v10, 0x10000006

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    if-ne v8, v3, :cond_3

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_3
    if-eq v8, v5, :cond_4

    if-ne v8, v6, :cond_5

    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v9, v9, v8

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_4
    add-int/2addr v8, v3

    goto/16 :goto_2

    :cond_6
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v10

    invoke-static {v10, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_add:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v13, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    new-instance v13, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x1e

    const/high16 v16, 0x41f00000    # 30.0f

    const/16 v17, 0x31

    const/high16 v18, 0x42100000    # 36.0f

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/ColorPicker$6;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v0, v13}, Lorg/telegram/ui/Components/ColorPicker$6;-><init>(Lorg/telegram/ui/Components/ColorPicker;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v13

    invoke-static {v13, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v15

    invoke-direct {v13, v15, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v8, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v13, 0x1e

    const/high16 v14, 0x41f00000    # 30.0f

    const/16 v15, 0x33

    const/high16 v16, 0x42c20000    # 97.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v8, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    const/high16 v18, 0x41600000    # 14.0f

    const/4 v13, -0x2

    const/high16 v14, 0x42100000    # 36.0f

    const/16 v15, 0x35

    const/16 v16, 0x0

    const/high16 v17, 0x40400000    # 3.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_7

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v4

    invoke-direct {v2, v1, v11, v7, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v4, Lorg/telegram/messenger/R$string;->OpenInEditor:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v4, Lorg/telegram/messenger/R$string;->ShareTheme:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->DeleteTheme:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setMenuYOffset(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v17, 0x41200000    # 10.0f

    const/16 v18, 0x0

    const/16 v12, 0x1e

    const/high16 v13, 0x41f00000    # 30.0f

    const/16 v14, 0x35

    const/4 v15, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {v0, v11, v7, v7, v1}, Lorg/telegram/ui/Components/ColorPicker;->updateColorsPosition(Ljava/util/ArrayList;IZI)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ColorPicker;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ColorPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ColorPicker;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ColorPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ColorPicker;->maxColorsCount:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ColorPicker;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->getFieldColor(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->setColorInner(I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/ColorPicker$RadioButton;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ColorPicker;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ColorPicker;)Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ColorPicker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private createColorWheelBitmap(II)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v1, v1

    const/4 v4, 0x7

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v12

    move v7, v1

    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v4, Landroid/graphics/LinearGradient;

    div-int/lit8 v5, v2, 0x3

    int-to-float v15, v5

    int-to-float v8, v2

    const/4 v2, -0x1

    const/4 v5, 0x0

    filled-new-array {v2, v5}, [I

    move-result-object v18

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    move-object v13, v4

    move/from16 v17, v8

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/ComposeShader;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v12, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x10000
    .end array-data
.end method

.method private drawPointerArrow(Landroid/graphics/Canvas;IIIZ)V
    .locals 5

    if-eqz p5, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v2, p2, v0

    sub-int v3, p3, v0

    add-int v4, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->circleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    if-eqz p5, :cond_1

    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x41700000    # 15.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p5, :cond_2

    const/high16 p4, 0x41100000    # 9.0f

    goto :goto_2

    :cond_2
    const/high16 p4, 0x41500000    # 13.0f

    :goto_2
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static generateGradientColors(I)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x1

    aget v1, v0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e19999a    # 0.15f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    sub-float/2addr v1, v3

    aput v1, v0, p0

    goto :goto_0

    :cond_0
    add-float/2addr v1, v3

    aput v1, v0, p0

    :goto_0
    const/4 p0, 0x0

    aget v1, v0, p0

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    sub-float/2addr v1, v3

    aput v1, v0, p0

    goto :goto_1

    :cond_1
    add-float/2addr v1, v3

    aput v1, v0, p0

    :goto_1
    const/16 p0, 0xff

    invoke-static {p0, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method private getBrightness()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getFieldColor(II)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    return p1

    :catch_0
    return p2
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    check-cast p1, Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setChecked(ZZ)V

    if-eqz v4, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    iput v3, p0, Lorg/telegram/ui/Components/ColorPicker;->prevSelectedColor:I

    iput v2, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    :cond_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->setColorInner(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object p1, v5, v0

    const-string p1, "%02x%02x%02x"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
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

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    const/4 v2, 0x2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v3, v1, p1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ColorPicker;->generateGradientColors(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ColorPicker;->myMessagesColor:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v3

    invoke-interface {v1, v3, v0, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v3

    invoke-interface {v1, v3, p1, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    iput v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v2, :cond_6

    iput v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    new-array v3, v3, [F

    invoke-static {v1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v1, v3, v0

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    sub-float/2addr v1, v5

    aput v1, v3, v0

    goto :goto_0

    :cond_4
    add-float/2addr v1, v5

    aput v1, v3, v0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, v2

    const/16 v4, 0xff

    invoke-static {v4, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v3

    invoke-interface {v1, v3, v2, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    goto :goto_1

    :cond_6
    if-ne v1, v3, :cond_b

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v4, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ColorPicker;->generateGradientColors(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v2

    invoke-interface {v1, v2, v3, p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget v3, p0, Lorg/telegram/ui/Components/ColorPicker;->maxColorsCount:I

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, p1, [F

    aput v7, v8, v0

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, p1, [F

    aput v7, v8, v0

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, p1, [F

    aput v7, v8, v0

    invoke-static {v2, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v8, p1

    mul-int v5, v5, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v8, p1

    mul-int v4, v4, v8

    add-int/2addr v5, v4

    int-to-float v4, v5

    new-array v5, p1, [F

    aput v4, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v8, p1

    mul-int v5, v5, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v8, p1

    mul-int v4, v4, v8

    add-int/2addr v5, v4

    int-to-float v4, v5

    new-array v5, p1, [F

    aput v4, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, p1, [F

    aput v6, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, p1, [F

    aput v6, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, p1, [F

    aput v6, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    if-le v2, p1, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, p1, [F

    aput v7, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, p1, [F

    aput v7, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, p1, [F

    aput v7, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    iget v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v3, p1

    aget-object p1, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0, v1, v0, v0, p1}, Lorg/telegram/ui/Components/ColorPicker;->updateColorsPosition(Ljava/util/ArrayList;IZI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ColorPicker$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ColorPicker$5;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/high16 v6, 0x41500000    # 13.0f

    const/high16 v7, 0x41f00000    # 30.0f

    if-ne v2, v3, :cond_2

    iput v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v7, v6

    int-to-float v6, v7

    new-array v7, v0, [F

    aput v6, v7, p1

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v8, 0x4

    if-ne v2, v8, :cond_b

    iput v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    int-to-float v4, v7

    new-array v6, v0, [F

    aput v4, v6, p1

    invoke-static {v2, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker;->maxColorsCount:I

    if-ge v2, v4, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v5, 0x3f800000    # 1.0f

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v0, [F

    aput v5, v6, p1

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    if-eq v2, v3, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v4, v4, v2

    :goto_4
    add-int/2addr v2, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    array-length v6, v5

    if-ge v2, v6, :cond_4

    add-int/lit8 v6, v2, -0x1

    aget-object v7, v5, v2

    aput-object v7, v5, v6

    goto :goto_4

    :cond_4
    aput-object v4, v5, v3

    :cond_5
    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->prevSelectedColor:I

    if-ltz v2, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v3, v2

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->callOnClick()Z

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    iget v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    goto :goto_5

    :goto_6
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    array-length v4, v3

    if-ge v2, v4, :cond_a

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->getColor()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    array-length v5, v5

    sub-int/2addr v5, v0

    if-ne v2, v5, :cond_9

    goto :goto_8

    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_8

    const/4 v3, 0x0

    :goto_8
    const/4 v5, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :cond_9
    const/4 v5, 0x0

    :goto_9
    invoke-interface {v4, v3, v2, v5}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    add-int/2addr v2, v0

    goto :goto_7

    :cond_a
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    iget p1, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/telegram/ui/Components/ColorPicker;->updateColorsPosition(Ljava/util/ArrayList;IZI)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/ColorPicker$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ColorPicker$7;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    return-void
.end method

.method private static synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$5(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->deleteTheme()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->openThemeCreate(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$provideThemeDescriptions$7()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ColorPicker;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    return-void
.end method

.method private setColorInner(I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->getDefaultColor(I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->updateHsvMinMaxBrightness()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    return-void
.end method

.method private updateColorsPosition(Ljava/util/ArrayList;IZI)V
    .locals 10

    const/4 p2, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v2, v2, v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int v0, v0, v5

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->radioContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->currentResetType:I

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p4, v2

    if-le v0, p4, :cond_1

    sub-int/2addr v0, p4

    int-to-float p4, v0

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->radioContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    neg-float p4, p4

    new-array v6, v3, [F

    aput p4, v6, p2

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    neg-float p4, p4

    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    :goto_2
    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    array-length v6, v2

    if-ge p4, v6, :cond_d

    aget-object v2, v2, p4

    sget v6, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {v2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    iget v7, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    if-ge p4, v7, :cond_9

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v7, v7, p4

    invoke-virtual {v7, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_7

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v3, [F

    aput v7, v9, p2

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v9, v3, [F

    aput v7, v9, p2

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v3, [F

    aput v7, v9, p2

    invoke-static {v2, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p3, :cond_6

    if-nez p3, :cond_5

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    sub-int/2addr v2, v3

    if-eq p4, v2, :cond_5

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    :goto_5
    int-to-float v7, v0

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v8, v0

    new-array v9, v3, [F

    aput v8, v9, p2

    invoke-static {v2, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    goto :goto_5

    :goto_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_8
    invoke-virtual {v2, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_a

    :cond_9
    if-eqz p1, :cond_a

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v5, v8, p2

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    aput v5, v8, p2

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v3, [F

    aput v5, v8, p2

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsAnimator:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_b
    :goto_9
    if-nez p3, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    int-to-float v7, v0

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v2, v2, p4

    const/4 v7, 0x0

    goto :goto_8

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v0, v2

    add-int/2addr p4, v3

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method private updateHsvMinMaxBrightness()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker;->minBrightness:F

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->maxBrightness:F

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    const/4 v5, 0x2

    aget v6, v4, v5

    cmpl-float v7, v0, v1

    if-nez v7, :cond_3

    cmpl-float v7, v2, v3

    if-nez v7, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    iput v3, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    return-void

    :cond_3
    aput v3, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    iget-object v7, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    aput v6, v7, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    div-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->getBrightness()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    return v0
.end method

.method public hideKeyboard()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    int-to-float v9, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v10, v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    add-int/lit8 v0, v8, 0x1

    int-to-float v4, v0

    iget-object v5, v6, Lorg/telegram/ui/Components/ColorPicker;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v10, -0x1

    int-to-float v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, v6, Lorg/telegram/ui/Components/ColorPicker;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    iget-object v1, v6, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v0, v11

    aget v0, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    aget v2, v2, v3

    sub-float v2, v12, v2

    mul-float v1, v1, v2

    add-float/2addr v9, v1

    float-to-int v1, v9

    iget-boolean v2, v6, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    if-nez v2, :cond_2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v6, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    if-ge v0, v2, :cond_0

    int-to-float v4, v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    add-float/2addr v4, v0

    :goto_0
    float-to-int v0, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_1

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v0, v0, v3

    sub-float/2addr v4, v0

    goto :goto_0

    :cond_1
    :goto_1
    add-int v4, v8, v2

    if-ge v1, v4, :cond_3

    int-to-float v2, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    float-to-int v1, v2

    :cond_2
    :goto_2
    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v4, v6, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v8

    sub-int/2addr v4, v2

    if-le v1, v4, :cond_2

    int-to-float v4, v1

    iget-object v5, v6, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v8, v5

    sub-int/2addr v8, v2

    sub-int/2addr v1, v8

    int-to-float v1, v1

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-int v1, v4

    goto :goto_2

    :goto_3
    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;IIIZ)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v10, v4

    int-to-float v4, v10

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_4

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    iget v1, v6, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    aput v1, v0, v11

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iget-object v1, v6, Lorg/telegram/ui/Components/ColorPicker;->hsvTemp:[F

    iget v2, v6, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    aput v2, v1, v11

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, v6, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    iget v14, v3, Landroid/graphics/RectF;->left:F

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget v3, v3, Landroid/graphics/RectF;->right:F

    filled-new-array {v1, v0}, [I

    move-result-object v18

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    move-object v13, v2

    move v15, v4

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, v6, Lorg/telegram/ui/Components/ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v6, Lorg/telegram/ui/Components/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, v6, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    iget v1, v6, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_4

    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ColorPicker;->getBrightness()F

    move-result v0

    iget v1, v6, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    sub-float/2addr v0, v1

    iget v2, v6, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    :goto_4
    iget-object v1, v6, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float v0, v12, v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v0, v6, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ColorPicker;->getColor()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;IIIZ)V

    iget-boolean v0, v6, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    if-nez v0, :cond_7

    iget v0, v6, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Components/ColorPicker;->lastUpdateTime:J

    sub-long v2, v0, v2

    iput-wide v0, v6, Lorg/telegram/ui/Components/ColorPicker;->lastUpdateTime:J

    iget v0, v6, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    long-to-float v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v6, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    cmpl-float v0, v0, v12

    if-lez v0, :cond_6

    iput v12, v6, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lorg/telegram/ui/Components/ColorPicker;->updateColorsPosition(Ljava/util/ArrayList;IZI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget p2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelWidth:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelWidth:I

    const/high16 p2, 0x43340000    # 180.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ColorPicker;->createColorWheelBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ColorPicker;->lastUpdateTime:J

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/high16 v4, 0x42340000    # 45.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    if-nez v5, :cond_5

    if-lt p1, v4, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    if-gt p1, v5, :cond_5

    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    iput v6, p0, Lorg/telegram/ui/Components/ColorPicker;->pressedMoveProgress:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/ui/Components/ColorPicker;->lastUpdateTime:J

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v5, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_4

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->getBrightness()F

    move-result v5

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    sub-float/2addr v5, v8

    iget v9, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    sub-float/2addr v9, v8

    div-float/2addr v5, v9

    :goto_1
    iget-object v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    int-to-float v9, v0

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v2

    iget-object v8, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    iget-object v9, p0, Lorg/telegram/ui/Components/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v7, v9

    sub-int v4, p1, v4

    int-to-float v4, v4

    mul-float v9, v9, v4

    sub-float v4, v7, v9

    aput v4, v8, v3

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->updateHsvMinMaxBrightness()V

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    iget v8, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    sub-float v9, v7, v5

    mul-float v8, v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    mul-float v9, v9, v5

    add-float/2addr v8, v9

    aput v8, v4, v1

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorGradient:Landroid/graphics/LinearGradient;

    :cond_5
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    if-nez v4, :cond_a

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_a

    iget v8, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_a

    int-to-float p1, p1

    iget v4, v5, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_a

    :cond_6
    int-to-float p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->sliderRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p1, v0

    sub-float p1, v7, p1

    cmpg-float v0, p1, v6

    if-gez v0, :cond_7

    goto :goto_2

    :cond_7
    cmpl-float v0, p1, v7

    if-lez v0, :cond_8

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    move v6, p1

    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorHSV:[F

    iget v0, p0, Lorg/telegram/ui/Components/ColorPicker;->minHsvBrightness:F

    sub-float/2addr v7, v6

    mul-float v0, v0, v7

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker;->maxHsvBrightness:F

    mul-float v4, v4, v6

    add-float/2addr v0, v4

    aput v0, p1, v1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorPressed:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ColorPicker;->circlePressed:Z

    if-eqz p1, :cond_d

    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPicker;->getColor()I

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v4, v6, v3

    aput-object v5, v6, v1

    const-string v0, "%02x%02x%02x"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v1, v2, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker;->delegate:Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    iget v1, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ColorPicker;->invalidate()V

    :cond_d
    return v3
.end method

.method public provideThemeDescriptions(Ljava/util/List;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v4, v2

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move v11, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v8, v4, v2

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v16, v4, v2

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int/2addr v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v13, v4, v2

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v5, v4, v2

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v6, v4

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v21, v22

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ColorPicker$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ColorPicker;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v3

    move-object v12, v2

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v9, v2

    move/from16 v10, v22

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setColor(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    if-ne v2, p2, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v2, "%02x%02x%02x"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->colorEditText:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object p2, v1, p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ColorPicker;->setColorInner(I)V

    return-void
.end method

.method public setHasChanges(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ColorPicker;->resetButton:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    new-array v1, v1, [F

    aput v6, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/telegram/ui/Components/ColorPicker$8;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ColorPicker$8;-><init>(Lorg/telegram/ui/Components/ColorPicker;Z)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setMaxBrightness(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker;->maxBrightness:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->updateHsvMinMaxBrightness()V

    return-void
.end method

.method public setMinBrightness(F)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker;->minBrightness:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/ColorPicker;->updateHsvMinMaxBrightness()V

    return-void
.end method

.method public setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setType(IZIIZIZ)V
    .locals 4

    iget p2, p0, Lorg/telegram/ui/Components/ColorPicker;->currentResetType:I

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    iput v0, p0, Lorg/telegram/ui/Components/ColorPicker;->prevSelectedColor:I

    iput v0, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ColorPicker;->radioButton:[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    aget-object v1, v1, p2

    iget v2, p0, Lorg/telegram/ui/Components/ColorPicker;->selectedColor:I

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, p6}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setChecked(ZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iput p3, p0, Lorg/telegram/ui/Components/ColorPicker;->maxColorsCount:I

    iput p1, p0, Lorg/telegram/ui/Components/ColorPicker;->currentResetType:I

    iput-boolean p5, p0, Lorg/telegram/ui/Components/ColorPicker;->myMessagesColor:Z

    iput p4, p0, Lorg/telegram/ui/Components/ColorPicker;->colorsCount:I

    const/4 p2, 0x0

    if-ne p4, p6, :cond_2

    iget-object p5, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {p5, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_2
    const/high16 p5, 0x41500000    # 13.0f

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x2

    if-ne p4, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    :goto_2
    add-int/2addr v1, p5

    int-to-float p5, v1

    invoke-virtual {v2, p5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x3

    if-ne p4, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr v1, p5

    int-to-float p5, v1

    invoke-virtual {v3, p5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    mul-int/lit8 p5, p5, 0x3

    goto :goto_2

    :goto_3
    iget-object p5, p0, Lorg/telegram/ui/Components/ColorPicker;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    if-eqz p5, :cond_6

    if-ne p1, p6, :cond_5

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    :goto_4
    if-gt p3, p6, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_8
    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    if-ge p4, p3, :cond_9

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->addButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    if-le p4, p6, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ColorPicker;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, v0, p1}, Lorg/telegram/ui/Components/ColorPicker;->updateColorsPosition(Ljava/util/ArrayList;IZI)V

    if-eqz p7, :cond_a

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 p4, 0xb4

    invoke-virtual {p1, p4, p5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/ColorPicker$9;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ColorPicker$9;-><init>(Lorg/telegram/ui/Components/ColorPicker;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    return-void
.end method
