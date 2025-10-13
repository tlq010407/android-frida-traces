.class public Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private link:Ljava/lang/String;

.field private linkContainer:Landroid/widget/FrameLayout;

.field private linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

.field private slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$1K_XjcvM42ovWL9kcitvjX3LGd8(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->lambda$hideSlug$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EUCG_FfnflVntWEh4QdnYfc_TmI(Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4S1V8OfRBNbv_TxnLYczGUtWco(Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v1, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->allowClickSpoilers:Z

    iget-object v4, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v5, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    const/16 v9, 0x4c

    invoke-static {v8, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v5, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    const/high16 v15, 0x41600000    # 14.0f

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v12, 0x0

    const/high16 v13, 0x41600000    # 14.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_copy_s:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v5, v6, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v4, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    const/high16 v7, 0x41880000    # 17.0f

    const/4 v8, 0x0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    const/16 v4, 0x15

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static synthetic lambda$hideSlug$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->link:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->link:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    return-void
.end method


# virtual methods
.method public hideSlug(Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    iget v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t.me/giftcode/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->slug:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->slug:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "1234567891011123654897566536223"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->slug:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/giftcode/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->link:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->linkView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t.me/giftcode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
