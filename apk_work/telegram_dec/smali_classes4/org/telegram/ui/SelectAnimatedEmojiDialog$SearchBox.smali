.class public abstract Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchBox"
.end annotation


# instance fields
.field private box:Landroid/widget/FrameLayout;

.field private categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

.field private clear:Landroid/widget/ImageView;

.field private delayedToggle:Ljava/lang/Runnable;

.field private input:Lorg/telegram/ui/Components/EditTextCaption;

.field private inputBox:Landroid/widget/FrameLayout;

.field private inputBoxGradient:Landroid/view/View;

.field private inputBoxGradientAlpha:F

.field private inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

.field private inputBoxShown:Z

.field private search:Landroid/widget/ImageView;

.field private searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$8CxEXA1siwizLpA8msj-jBIky-w(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$toggleClear$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$MlFxDrD_VxZzceYc1oNE1Yz9oNg(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XDHLL4YMCMalyww5F5ku3vdT2-M(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$showInputBoxGradient$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWQ854u3lZSTE-e8P72_tcGfw2I(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$createCategoriesListView$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMdcG1eX14FKiH4ep8b5yEyAZNY(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$createCategoriesListView$4(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwJhLe07OGgnZoPcsQM8WkDRGU0(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$owuImW1H1fnMSq0ROS9kg3IodTk(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iput-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelBackground:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    invoke-static {v6, v5}, Lorg/telegram/ui/AvatarPreviewer$Layout$$ExternalSyntheticApiModelOutline1;->m(Landroid/widget/FrameLayout;Z)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    new-instance v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$1;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-static {v6, v7}, Lorg/telegram/ui/AvatarPreviewer$AvatarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/widget/FrameLayout;Landroid/view/ViewOutlineProvider;)V

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v15, 0x41000000    # 8.0f

    const/4 v9, -0x1

    const/high16 v10, 0x42100000    # 36.0f

    const/16 v11, 0x37

    const/high16 v12, 0x41000000    # 8.0f

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/SearchStateDrawable;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v6, v4, v4}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(IZ)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiSearchIcon:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/SearchStateDrawable;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->search:Landroid/widget/ImageView;

    const/16 v11, 0x33

    const/16 v12, 0x24

    invoke-static {v12, v12, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$2;

    invoke-direct {v6, v0, v2, v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x77

    const/high16 v16, 0x42100000    # 36.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v6, v0, v2, v10, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v6, v4, v4, v10, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    sget v6, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const v6, 0x10000003

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v18, 0x42000000    # 32.0f

    const/16 v16, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->gradient_right:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/16 v10, 0x12

    invoke-static {v10, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {v3, v0, v6, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;FLorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1, v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    const/16 v3, 0x35

    invoke-static {v12, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isFirstOpen()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->createCategoriesListView()V

    :cond_3
    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/StickerCategoriesListView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->toggleClear(Z)V

    return-void
.end method

.method static synthetic access$9700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAlpha:F

    return p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    return-void
.end method

.method private createCategoriesListView()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v5, 0xb

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    const/16 v5, 0xe

    if-eq v0, v5, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const/high16 v1, 0x40d00000    # 6.5f

    goto :goto_1

    :cond_4
    const/high16 v1, 0x40900000    # 4.5f

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setShownButtonsAtStart(F)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setDontOccupyWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnScrollIntoOccupiedWidth(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->setOnCategoryClick(Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->box:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x77

    const/high16 v5, 0x42100000    # 36.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic lambda$createCategoriesListView$3(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

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
    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton()V

    return-void
.end method

.method private synthetic lambda$createCategoriesListView$4(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, p1, Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;->emojis:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->scrollToStart()V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->prevWindowKeyboardVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onInputFocus()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->selectCategory(Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->updateCategoriesShown(ZZ)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showInputBoxGradient(Z)V

    return-void
.end method

.method private synthetic lambda$showInputBoxGradient$6(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAlpha:F

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradient:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBox:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleClear$5()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewShow(Landroid/view/View;Z)V

    return-void
.end method

.method private showInputBoxGradient(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxShown:Z

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAlpha:F

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

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->inputBoxGradientAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toggleClear(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    const-wide/16 v0, 0x154

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->delayedToggle:Ljava/lang/Runnable;

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->clear:Landroid/widget/ImageView;

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

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton(Z)V

    return-void
.end method

.method private updateButton(Z)V
    .locals 1

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerCategoriesListView;->getSelectedCategory()Lorg/telegram/ui/Components/StickerCategoriesListView$EmojiCategory;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->input:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isCategoriesShown()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->isScrolledIntoOccupiedWidth()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->categoriesListView:Lorg/telegram/ui/Components/StickerCategoriesListView;

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
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public checkInitialization()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->createCategoriesListView()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grab(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public isInProgress()Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->getIconState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p2, 0x42500000    # 52.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public showProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->searchStateDrawable:Lorg/telegram/ui/Components/SearchStateDrawable;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchStateDrawable;->setIconState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->updateButton(Z)V

    :goto_0
    return-void
.end method
