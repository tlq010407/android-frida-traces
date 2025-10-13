.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchField"
.end annotation


# instance fields
.field private final box:Landroid/widget/FrameLayout;

.field private categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private categoriesListViewType:I

.field private final clear:Landroid/widget/ImageView;

.field private clearVisible:Z

.field private final editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public ignoreTextChange:Z

.field private final inputBox:Landroid/widget/FrameLayout;

.field private isprogress:Z

.field private onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field private final searchImageView:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$2WfgskeOO1cg47TyVdGxNWW9TC8(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P2-IBWlJOiWkQI9v6VG3H5_PMmc(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$checkCategoriesView$2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PrP5e9fZ9JbL5Pzs05Mh6s_FPnw(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qvkqGr6wosZQquC82nVBugLbqw(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->lambda$checkCategoriesView$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListViewType:I

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->box:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchBackground:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    const/4 v6, 0x1

    if-lt v4, v5, :cond_0

    invoke-static {v3, v6}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-static {v3, v4}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/4 v7, -0x1

    const/high16 v8, 0x42100000    # 36.0f

    const/16 v9, 0x77

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->inputBox:Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    const/16 v9, 0x33

    const/high16 v10, 0x42180000    # 38.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v8, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x33

    const/16 v11, 0x24

    invoke-static {v11, v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v8, v6, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v9, 0x10000003

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    sget v9, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHandlesColor(I)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/high16 v9, -0x40000000    # -2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v17, 0x41e00000    # 28.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, 0x42200000    # 40.0f

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;

    const/high16 v7, 0x3fa00000    # 1.25f

    invoke-direct {v1, v0, v7, v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$4;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;FLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x35

    invoke-static {v11, v11, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    return-void
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clearVisible:Z

    return p0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clearVisible:Z

    return p1
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkCategoriesView$2(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton()V

    return-void
.end method

.method private synthetic lambda$checkCategoriesView$3(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    const/4 p1, -0x1

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getCategoryIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->search(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->clear()V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private search(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateButton()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public checkCategoriesView(IZ)V
    .locals 10

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListViewType:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->box:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    const/4 p1, 0x3

    const/4 v6, 0x3

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$5;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;Landroid/content/Context;[Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->box:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, 0x42100000    # 36.0f

    const/16 v3, 0x33

    const/high16 v4, 0x42100000    # 36.0f

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnSearchQuery(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->onSearchQuery:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->isprogress:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->searchImageDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->updateButton(Z)V

    :goto_0
    return-void
.end method
