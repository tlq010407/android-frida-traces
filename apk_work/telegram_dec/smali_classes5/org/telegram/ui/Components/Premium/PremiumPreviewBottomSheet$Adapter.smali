.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;


# direct methods
.method public static synthetic $r8$lambda$F7vEdOWpYFMQLTrrNgThfdliTAQ(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$QH1ignRawofuNrm9hhnju38hRNI(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->lambda$onCreateViewHolder$1()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->TermsOfServiceUrl:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionStartRow:I

    if-lt p1, v1, :cond_1

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionEndRow:I

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->getAdditionItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    if-lt p1, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    if-ge p1, v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->sectionRow:I

    if-ne p1, v1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->buttonRow:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->helpUsRow:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    iget v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->termsRow:I

    if-ne p1, v0, :cond_6

    const/4 p1, 0x5

    return p1

    :cond_6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isAdditionViewClickable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    if-lt p2, v1, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    if-ge p2, v2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PremiumFeatureCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget v1, v1, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/PremiumFeatureCell;->setData(Lorg/telegram/ui/PremiumPreviewFragment$PremiumFeatureData;Z)V

    goto :goto_1

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionStartRow:I

    if-lt p2, v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionEndRow:I

    if-ge p2, v1, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->onBindAdditionCell(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->onCreateAdditionCell(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_0
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$6;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v3, v0, v2, v6}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$6;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_4

    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;

    iget-object v8, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v8}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;->setBackground(Z)V

    sget v2, Lorg/telegram/messenger/R$string;->GiftPremiumPrivacyPolicyAndTerms:I

    const-string v7, "GiftPremiumPrivacyPolicyAndTerms"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;)V

    invoke-static {v2, v7, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v8, Lorg/telegram/messenger/R$string;->GiftPremiumPrivacyPolicy:I

    const-string v9, "GiftPremiumPrivacyPolicy"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;)V

    invoke-static {v8, v7, v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-string v7, "%1$s"

    invoke-static {v7, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/Premium/AboutPremiumView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/Premium/AboutPremiumView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_3
    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$7;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$7;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_4
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v6

    const/16 v7, 0xc

    invoke-direct {v3, v2, v7, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_4

    :cond_5
    new-instance v8, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$1;

    invoke-direct {v8, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iput-object v8, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    if-nez v10, :cond_6

    new-instance v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$2;

    invoke-direct {v10, v0, v2, v7}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;I)V

    iput-object v10, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v10, 0x32

    invoke-static {v10, v10, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$100(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v11, v13, v14}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-virtual {v10, v9}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iput v12, v9, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey1:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    iput v10, v9, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->colorKey2:I

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/16 v10, 0xa0

    invoke-static {v10, v10, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v9, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->attachIconContainer(Landroid/widget/LinearLayout;)V

    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    if-nez v9, :cond_a

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$302(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v11, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-nez v11, :cond_8

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v10

    goto :goto_1

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_1
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-array v10, v3, [Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iput-object v10, v9, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    new-instance v11, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;

    iget-object v12, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$500(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v11, v0, v2, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$3;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    aput-object v11, v10, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v9

    if-nez v9, :cond_9

    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/16 v11, 0x8

    :goto_3
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v9

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v10, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v10, v10, v9

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v11, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v11, v11, v9

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v10, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v11, v10, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v11, v11, v9

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v10, v12}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v10}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v11, v11, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->titleView:[Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    aget-object v11, v11, v9

    const/high16 v12, -0x40000000    # -2.0f

    invoke-static {v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v9, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$300(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/16 v15, 0x28

    const/16 v16, 0x0

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x28

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v9, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    if-nez v9, :cond_c

    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v10, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v10}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v11}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$800(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v3, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$900(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v3, v9}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1000(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v7, v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const/16 v15, 0x10

    const/16 v16, 0x14

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/16 v14, 0x9

    invoke-static/range {v9 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    new-instance v7, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$4;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    iput-object v7, v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    new-instance v3, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$5;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter$5;-><init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v6, v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->iconTextureView:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    if-eqz v6, :cond_e

    iget-object v2, v2, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->starParticlesView:Lorg/telegram/ui/Components/Premium/StarParticlesView;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    :cond_e
    :goto_4
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$Adapter;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->afterCellCreated(ILandroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
