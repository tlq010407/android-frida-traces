.class Lorg/telegram/ui/Components/ShareAlert$SearchField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchField"
.end annotation


# instance fields
.field private clearSearchImageView:Landroid/widget/ImageView;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private searchBackground:Landroid/view/View;

.field private searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchIconImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$CQhAuCizm80t3FupeHW772ZCA1A(Lorg/telegram/ui/Components/ShareAlert$SearchField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W2bOsbsdxFeA-dsjDJMvjO1YqS4(Lorg/telegram/ui/Components/ShareAlert$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchBackground:Landroid/view/View;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$800(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchBackground:Landroid/view/View;

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchIconImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchIconImageView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchIconImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ShareAlert;->access$900(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchIconImageView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/16 v2, 0x24

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$SearchField$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SearchField;Lorg/telegram/ui/Components/ShareAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    const/high16 v6, 0x41600000    # 14.0f

    const/16 v1, 0x24

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x35

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ShareAlert$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1100(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v0, 0x10000003

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/messenger/R$string;->ShareSendTo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1300(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x42380000    # 46.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x42200000    # 40.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42580000    # 54.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$SearchField$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$SearchField$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$SearchField;Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ShareAlert$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$SearchField;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ShareAlert$SearchField;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1702(Lorg/telegram/ui/Components/ShareAlert;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

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
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method
