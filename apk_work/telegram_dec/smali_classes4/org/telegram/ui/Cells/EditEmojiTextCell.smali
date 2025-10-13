.class public abstract Lorg/telegram/ui/Cells/EditEmojiTextCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private allowEntities:Z

.field public autofocused:Z

.field public final editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

.field private focused:Z

.field private ignoreEditText:Z

.field final limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field final limitColor:Lorg/telegram/ui/Components/AnimatedColor;

.field private limitCount:I

.field private maxLength:I

.field private needDivider:Z

.field private showLimitWhenEmpty:Z

.field private showLimitWhenFocused:Z

.field private showLimitWhenNear:I


# direct methods
.method public static synthetic $r8$lambda$HlfiXHGF08ZflbznjpB0h3Qx9pA(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->lambda$hideKeyboardOnEnter$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, -0x1

    iput v13, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenNear:I

    const/4 v14, 0x1

    iput-boolean v14, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->allowEntities:Z

    new-instance v15, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v8, 0x0

    invoke-direct {v15, v8, v14, v14}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v15, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa0

    const v1, 0x3e4ccccd    # 0.2f

    move-object v0, v15

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    const v0, 0x417547ae    # 15.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const/4 v7, 0x5

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    iput v11, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->maxLength:I

    new-instance v6, Lorg/telegram/ui/Cells/EditEmojiTextCell$2;

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p6

    move-object v13, v6

    move/from16 v6, v16

    move-object/from16 v7, p7

    const/4 v14, 0x0

    move/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Cells/EditEmojiTextCell$2;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v13, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/EditEmojiTextCell$3;

    invoke-direct {v1, v9, v0}, Lorg/telegram/ui/Cells/EditEmojiTextCell$3;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;Lorg/telegram/ui/Components/EditTextCaption;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setDelegate(Lorg/telegram/ui/Components/EditTextCaption$EditTextCaptionDelegate;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Lorg/telegram/ui/Components/AnimatedColor;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;)V

    iput-object v1, v9, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limitColor:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v15, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v1, 0x41880000    # 17.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x5

    if-eqz v10, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    const/4 v5, 0x4

    move/from16 v6, p6

    if-ne v6, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    if-lez v11, :cond_2

    const/16 v8, 0x2a

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v8, v8, 0x15

    int-to-float v5, v8

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    const/4 v7, 0x5

    goto :goto_3

    :cond_3
    const/4 v7, 0x3

    :goto_3
    const/16 v2, 0x30

    or-int/lit8 v3, v7, 0x30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v10, :cond_4

    const/high16 v8, 0x20000

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const v3, 0x8c001

    or-int v4, v8, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v1, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v1, 0x41980000    # 19.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    new-instance v1, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;

    invoke-direct {v1, v9, v11, v0, v10}, Lorg/telegram/ui/Cells/EditEmojiTextCell$4;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;ILorg/telegram/ui/Components/EditTextCaption;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;

    invoke-direct {v1, v9}, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x1

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->updateLimitText()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/EditEmojiTextCell;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limitCount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->allowEntities:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->ignoreEditText:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Cells/EditEmojiTextCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->ignoreEditText:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->updateLimitText()V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/EditEmojiTextCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->focused:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenFocused:Z

    return p0
.end method

.method private synthetic lambda$hideKeyboardOnEnter$0()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private updateLimitText()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->maxLength:I

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limitCount:I

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limit:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenEmpty:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenFocused:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->focused:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->autofocused:Z

    if-nez v1, :cond_4

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenNear:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limitCount:I

    if-le v3, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->limitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public emojiCacheType()I
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboardOnEnter()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Cells/EditEmojiTextCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->whenHitEnter(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->needDivider:Z

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

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setAllowEntities(Z)Lorg/telegram/ui/Cells/EditEmojiTextCell;
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->allowEntities:Z

    return-object p0
.end method

.method public setDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->needDivider:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setEmojiViewCacheType(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setEmojiViewCacheType(I)V

    return-void
.end method

.method public setShowLimitOnFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenFocused:Z

    return-void
.end method

.method public setShowLimitWhenEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenEmpty:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->updateLimitText()V

    :cond_0
    return-void
.end method

.method public setShowLimitWhenNear(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->showLimitWhenNear:I

    invoke-direct {p0}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->updateLimitText()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->ignoreEditText:Z

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->ignoreEditText:Z

    return-void
.end method

.method public whenHitEnter(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell;->editTextEmoji:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Cells/EditEmojiTextCell$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell$1;-><init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
