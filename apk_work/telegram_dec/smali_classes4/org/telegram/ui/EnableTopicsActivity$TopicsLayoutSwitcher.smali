.class Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/EnableTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopicsLayoutSwitcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$Factory;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final leftImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final leftLayout:Landroid/widget/FrameLayout;

.field private final leftTitleBackground:Landroid/widget/FrameLayout;

.field private final leftTitleLayout:Landroid/widget/FrameLayout;

.field private final leftTitleSelected:Landroid/widget/TextView;

.field private final leftTitleUnselected:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rightImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final rightLayout:Landroid/widget/FrameLayout;

.field private final rightTitleBackground:Landroid/widget/FrameLayout;

.field private final rightTitleLayout:Landroid/widget/FrameLayout;

.field private final rightTitleSelected:Landroid/widget/TextView;

.field private final rightTitleUnselected:Landroid/widget/TextView;

.field private tabsAlpha:F


# direct methods
.method public static synthetic $r8$lambda$sq-KtdnSmyIjj0uJ9DPW4ShSUNo(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->lambda$setChecked$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftLayout:Landroid/widget/FrameLayout;

    const v5, 0x3d4ccccd    # 0.05f

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/4 v7, -0x1

    const/16 v8, 0xe2

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x77

    invoke-static {v7, v8, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v12, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v13, Lorg/telegram/messenger/R$raw;->topics_tabs:I

    const/high16 v14, 0x43200000    # 160.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const-string v14, "topics_tabs"

    invoke-direct {v12, v13, v14, v15, v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, 0xa0

    const/high16 v17, 0x43200000    # 160.0f

    const/16 v18, 0x31

    const/16 v19, 0x0

    const v20, 0x414547ae    # 12.33f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleLayout:Landroid/widget/FrameLayout;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v13, 0x1

    invoke-static {v1, v12, v11, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v14

    iput-object v14, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleUnselected:Landroid/widget/TextView;

    sget v15, Lorg/telegram/messenger/R$string;->TopicsLayoutTabs:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v14, v9, v3, v10, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, -0x2

    const/16 v10, 0x11

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v7, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v14, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v14, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x1a

    invoke-static {v9, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    invoke-static {v1, v12, v14, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleSelected:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v5, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, -0x2

    const/high16 v24, 0x41d00000    # 26.0f

    const/16 v25, 0x31

    const/16 v26, 0x0

    const/high16 v27, 0x43360000    # 182.0f

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightLayout:Landroid/widget/FrameLayout;

    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/4 v4, -0x1

    const/16 v5, 0xe2

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v15, 0x77

    invoke-static {v4, v5, v7, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v7, Lorg/telegram/messenger/R$raw;->topics_list:I

    const/high16 v15, 0x43200000    # 160.0f

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const-string v10, "topics_list"

    invoke-direct {v5, v7, v10, v9, v15}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v23, 0xa0

    const/high16 v24, 0x43200000    # 160.0f

    const v27, 0x414547ae    # 12.33f

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v12, v11, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleUnselected:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->TopicsLayoutList:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, -0x2

    const/16 v10, 0x11

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v9, v11, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x2

    const/16 v6, 0x11

    const/16 v8, 0x1a

    invoke-static {v2, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1, v12, v14, v13}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleSelected:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v2, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x41d00000    # 26.0f

    const/16 v8, 0x31

    const/4 v9, 0x0

    const/high16 v10, 0x43360000    # 182.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->setChecked(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private synthetic lambda$setChecked$0(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    iget-object v2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v4, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    invoke-static {v2, v4, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    invoke-static {v1, v2, v5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-direct {v0, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-nez p1, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v5, 0x140

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    const/4 v7, 0x2

    new-array v7, v7, [F

    aput p2, v7, v1

    aput v2, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher$1;-><init>(Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_e

    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    if-nez p1, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    if-nez p1, :cond_a

    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_8
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftTitleBackground:Landroid/widget/FrameLayout;

    if-nez p1, :cond_b

    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_9
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    const/4 v4, 0x0

    goto :goto_a

    :cond_c
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_d

    const/4 v4, 0x0

    goto :goto_b

    :cond_d
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {p2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightTitleBackground:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_e

    const/4 v4, 0x0

    goto :goto_c

    :cond_e
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_c
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_f

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_f
    const/4 p2, 0x0

    :goto_d
    iput p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    iget-object v6, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v8, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    invoke-static {v6, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->tabsAlpha:F

    sub-float/2addr v2, v7

    invoke-static {v5, v6, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-direct {v4, v2, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :goto_e
    if-eqz p1, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->leftImageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_f

    :cond_10
    iget-object p2, p0, Lorg/telegram/ui/EnableTopicsActivity$TopicsLayoutSwitcher;->rightImageView:Lorg/telegram/ui/Components/BackupImageView;

    :goto_f
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->getProgress()F

    move-result v2

    if-eqz p1, :cond_11

    const p1, 0x3f59999a    # 0.85f

    goto :goto_10

    :cond_11
    const p1, 0x3f4ccccd    # 0.8f

    :goto_10
    cmpl-float p1, v2, p1

    if-lez p1, :cond_12

    invoke-virtual {p2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    :cond_12
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    :cond_13
    return-void
.end method
