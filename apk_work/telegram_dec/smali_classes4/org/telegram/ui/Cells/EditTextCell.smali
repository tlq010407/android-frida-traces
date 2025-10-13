.class public Lorg/telegram/ui/Cells/EditTextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public autofocused:Z

.field public final editText:Lorg/telegram/ui/Components/EditTextCaption;

.field private focused:Z

.field private ignoreEditText:Z

.field limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field limitColor:Lorg/telegram/ui/Components/AnimatedColor;

.field private limitCount:I

.field private maxLength:I

.field private needDivider:Z

.field private showLimitWhenEmpty:Z

.field private showLimitWhenFocused:Z

.field private showLimitWhenNear:I


# direct methods
.method public static synthetic $r8$lambda$3cJ9X2vtWxXi6f3vTChGHhtKpu8(Lorg/telegram/ui/Cells/EditTextCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditTextCell;->lambda$hideKeyboardOnEnter$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, -0x1

    iput v11, v7, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenNear:I

    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;)V

    iput-object v0, v7, Lorg/telegram/ui/Cells/EditTextCell;->limitColor:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {v12, v6, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v7, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v18, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0xa0

    const v13, 0x3e4ccccd    # 0.2f

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v0, v7, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v1, 0x417547ae    # 15.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v0, v7, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iput v9, v7, Lorg/telegram/ui/Cells/EditTextCell;->maxLength:I

    new-instance v13, Lorg/telegram/ui/Cells/EditTextCell$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p5

    const/4 v14, 0x1

    move-object/from16 v5, p6

    const/4 v15, 0x0

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Cells/EditTextCell$2;-><init>(Lorg/telegram/ui/Cells/EditTextCell;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v13, v7, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v0, v7, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v0, 0x41880000    # 17.0f

    invoke-virtual {v13, v14, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v13, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_0

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_0
    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lez v9, :cond_1

    const/16 v6, 0x2a

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v6, v6, 0x15

    int-to-float v4, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v13, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v12, 0x3

    :goto_2
    const/16 v1, 0x30

    or-int/lit8 v2, v12, 0x30

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v8, :cond_3

    const/high16 v6, 0x20000

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const v2, 0x8c001

    or-int v3, v6, v2

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    move-object/from16 v2, p2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v0, 0x41980000    # 19.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    new-instance v0, Lorg/telegram/ui/Cells/EditTextCell$3;

    invoke-direct {v0, v7, v9, v8}, Lorg/telegram/ui/Cells/EditTextCell$3;-><init>(Lorg/telegram/ui/Cells/EditTextCell;IZ)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lorg/telegram/ui/Cells/EditTextCell$4;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Cells/EditTextCell$4;-><init>(Lorg/telegram/ui/Cells/EditTextCell;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {v11, v11, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/EditTextCell;->updateLimitText()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/EditTextCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditTextCell;->updateLimitText()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/EditTextCell;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/EditTextCell;->limitCount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/EditTextCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/EditTextCell;->ignoreEditText:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/EditTextCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->ignoreEditText:Z

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/Cells/EditTextCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->focused:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/EditTextCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenFocused:Z

    return p0
.end method

.method private synthetic lambda$hideKeyboardOnEnter$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private updateLimitText()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->maxLength:I

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->limitCount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/EditTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenEmpty:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenFocused:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->focused:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->autofocused:Z

    if-nez v1, :cond_4

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenNear:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Cells/EditTextCell;->limitCount:I

    if-le v3, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Cells/EditTextCell;->limitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboardOnEnter()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Cells/EditTextCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/EditTextCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/EditTextCell;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/EditTextCell;->whenHitEnter(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x41b00000    # 22.0f

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
    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 9

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x18

    const/high16 v3, 0x41c00000    # 24.0f

    const/16 v4, 0x13

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setShowLimitOnFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenFocused:Z

    return-void
.end method

.method public setShowLimitWhenEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenEmpty:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditTextCell;->updateLimitText()V

    :cond_0
    return-void
.end method

.method public setShowLimitWhenNear(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->showLimitWhenNear:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditTextCell;->updateLimitText()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->ignoreEditText:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditTextCell;->ignoreEditText:Z

    return-void
.end method

.method public whenHitEnter(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditTextCell;->editText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v1, Lorg/telegram/ui/Cells/EditTextCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/EditTextCell$1;-><init>(Lorg/telegram/ui/Cells/EditTextCell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
