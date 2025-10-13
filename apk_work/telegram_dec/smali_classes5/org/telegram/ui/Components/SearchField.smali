.class public abstract Lorg/telegram/ui/Components/SearchField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private clearSearchImageView:Landroid/widget/ImageView;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchBackground:Landroid/view/View;

.field private searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchIconImageView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$-Go1mn5pfejzLu9c3Ox330EJkZo(Lorg/telegram/ui/Components/SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m9Nbora4R9xhAOQ4kZ91T-TiwA0(Lorg/telegram/ui/Components/SearchField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchField;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p4, Landroid/view/View;

    invoke-direct {p4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/SearchField;->searchBackground:Landroid/view/View;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    const/high16 v5, 0x41300000    # 11.0f

    const/4 v7, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x42100000    # 36.0f

    const v3, 0x800033

    move v4, p3

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x41300000    # 11.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    move v3, p3

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->searchBackground:Landroid/view/View;

    invoke-virtual {p0, v0, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p4, Landroid/widget/ImageView;

    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lorg/telegram/ui/Components/SearchField;->searchIconImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/SearchField;->searchIconImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p4, p0, Lorg/telegram/ui/Components/SearchField;->searchIconImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    add-float v4, p3, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v1, 0x42100000    # 36.0f

    const/high16 v2, 0x42100000    # 36.0f

    const v3, 0x800033

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-float v5, p3, p4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v2, 0x24

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x33

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchField;->searchIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/SearchField$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchField$1;-><init>(Lorg/telegram/ui/Components/SearchField;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_2

    const/high16 v6, 0x41300000    # 11.0f

    const/4 v8, 0x0

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x42100000    # 36.0f

    const v4, 0x800035

    move v5, p3

    move v7, p3

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/high16 v5, 0x41300000    # 11.0f

    const/4 v7, 0x0

    const/16 v1, 0x24

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x35

    move v4, p3

    move v6, p3

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchField;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/SearchField$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/SearchField$2;-><init>(Lorg/telegram/ui/Components/SearchField;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 p1, 0x41800000    # 16.0f

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p2, :cond_3

    invoke-static {}, Lorg/telegram/ui/Components/LayoutHelper;->getAbsoluteGravityStart()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    :goto_3
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v0, 0x10000003

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/high16 p1, 0x41f00000    # 30.0f

    const/high16 v0, 0x42180000    # 38.0f

    add-float/2addr p3, p4

    add-float v4, p3, v0

    add-float v6, p3, p1

    const/high16 v5, 0x41100000    # 9.0f

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x42200000    # 40.0f

    const v3, 0x800033

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    goto :goto_4

    :cond_4
    const/4 v1, -0x1

    const/high16 v2, 0x42200000    # 40.0f

    const/16 v3, 0x33

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/Components/SearchField$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SearchField$3;-><init>(Lorg/telegram/ui/Components/SearchField;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/Components/SearchField$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SearchField;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    const/high16 v0, 0x41600000    # 14.0f

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/SearchField;-><init>(Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SearchField;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchField;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchField;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->hideActionMode()V

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getProgressDrawable()Lorg/telegram/ui/Components/CloseProgressDrawable2;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    return-object v0
.end method

.method public getSearchBackground()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->searchBackground:Landroid/view/View;

    return-object v0
.end method

.method public getSearchEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method public getThemeDescriptions(Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchField;->searchBackground:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/SearchField;->searchIconImageView:Landroid/widget/ImageView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onFieldTouchUp(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    return-void
.end method

.method public abstract onTextChange(Ljava/lang/String;)V
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
