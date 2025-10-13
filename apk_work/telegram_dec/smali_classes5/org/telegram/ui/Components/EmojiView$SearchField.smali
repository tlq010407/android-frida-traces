.class abstract Lorg/telegram/ui/Components/EmojiView$SearchField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchField"
.end annotation


# instance fields
.field private backgroundView:Landroid/view/View;

.field private box:Landroid/widget/FrameLayout;

.field private categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private clear:Landroid/widget/ImageView;

.field private delayedToggle:Ljava/lang/Runnable;

.field private inputBox:Landroid/widget/FrameLayout;

.field private inputBoxGradient:Landroid/view/View;

.field private inputBoxGradientAlpha:F

.field inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

.field private inputBoxShown:Z

.field private isprogress:Z

.field private recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

.field private searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchImageView:Landroid/widget/ImageView;

.field private searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field private shadowAnimator:Landroid/animation/AnimatorSet;

.field private shadowView:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$GUrbGM2hIs4fnMp2rpo4_B3jFe4(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$toggleClear$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$XgtEXFDleHatrbXIFY37Q_sew3k(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a21ydfwkxOCPHhhDL4q2_yLZYIc(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZrt7p7SCHDUEo94JhaG1Rq0fmY(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k8qLAj2sDdf9exJyILRCF382qfM(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$showInputBoxGradient$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTWCA8RowJK0ds5tqhzfNea_Blg(Lorg/telegram/ui/Components/EmojiView$SearchField;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->lambda$new$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    iput-object v9, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    iput v7, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->type:I

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelShadowLine:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v6

    const/16 v10, 0x53

    const/4 v11, -0x1

    invoke-direct {v5, v11, v6, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$500(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    invoke-direct {v5, v11, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_1

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$SearchField$1;

    invoke-direct {v5, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$1;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v1, v5}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    :cond_1
    const/4 v1, 0x2

    if-ne v7, v1, :cond_2

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/high16 v17, 0x41200000    # 10.0f

    const/high16 v18, 0x41000000    # 8.0f

    const/4 v12, -0x1

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x77

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41000000    # 8.0f

    :goto_0
    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/high16 v17, 0x41200000    # 10.0f

    const/high16 v18, 0x41000000    # 8.0f

    const/4 v12, -0x1

    const/high16 v13, 0x42100000    # 36.0f

    const/16 v14, 0x77

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x40c00000    # 6.0f

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$2;

    invoke-direct {v1, v8, v2, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$2;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiView;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    iget-object v5, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x42200000    # 40.0f

    const/16 v14, 0x33

    const/high16 v15, 0x42180000    # 38.0f

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    iget-object v12, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    new-instance v12, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v12, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v12, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchImageView:Landroid/widget/ImageView;

    const/16 v13, 0x33

    const/16 v14, 0x24

    invoke-static {v14, v14, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$3;

    invoke-direct {v1, v8, v2, v9, v7}, Lorg/telegram/ui/Components/EmojiView$SearchField$3;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/EmojiView;I)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v1, v4, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v5, 0x10000003

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    iget-object v5, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v20, 0x41e00000    # 28.0f

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42200000    # 40.0f

    const/16 v17, 0x33

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v1, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/Components/EmojiView$SearchField$4;

    invoke-direct {v5, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$4;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$500(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v13, Lorg/telegram/messenger/R$drawable;->gradient_right:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v9, v15}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v15

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v0

    invoke-static {v15, v0}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v0, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    const/16 v13, 0x12

    invoke-static {v13, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$5;

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {v1, v8, v6, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$5;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;FLorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v1, v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v14, v14, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v7, v4, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$2700(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    new-instance v11, Lorg/telegram/ui/Components/EmojiView$SearchField$6;

    if-nez v7, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/EmojiView$SearchField$6;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/EmojiView;I)V

    iput-object v11, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/EmojiView;->access$500(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static {v9, v1}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v1

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setBackgroundColor(I)V

    :cond_6
    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda2;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$7;

    invoke-direct {v1, v8, v9}, Lorg/telegram/ui/Components/EmojiView$SearchField$7;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda3;

    invoke-direct {v1, v8}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object v1, v8, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x42100000    # 36.0f

    const/16 v11, 0x33

    const/high16 v12, 0x42100000    # 36.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void
.end method

.method static synthetic access$14100(Lorg/telegram/ui/Components/EmojiView$SearchField;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showShadow(ZZ)V

    return-void
.end method

.method static synthetic access$15000(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    return-object p0
.end method

.method static synthetic access$15100(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$15300(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/SearchStateDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    return-object p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->box:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$15900(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/EmojiView$SearchField;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAlpha:F

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmojiView$SearchField;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmojiView$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmojiView$SearchField;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView$SearchField;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    return-void
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/EmojiView$SearchField;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    :cond_0
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->toggleClear(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    const-string v1, ""

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->recent:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showInputBoxGradient(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->trending:Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p1, p1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->preload(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->search(Ljava/lang/String;Z)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$showInputBoxGradient$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradient:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBox:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleClear$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    return-void
.end method

.method private showInputBoxGradient(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxShown:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAlpha:F

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showShadow(ZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    new-array p1, v1, [F

    aput v2, p1, v0

    invoke-static {v4, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/EmojiView$SearchField$8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/EmojiView$SearchField$8;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->shadowView:Landroid/view/View;

    if-eqz p1, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_7
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private toggleClear(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EmojiView$SearchField$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$SearchField;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    const-wide/16 v0, 0x154

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->delayedToggle:Ljava/lang/Runnable;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->clear:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 2

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$SearchField;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public isCategorySelected()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    return v0
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->isprogress:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$SearchField;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->updateButton(Z)V

    :goto_0
    return-void
.end method
