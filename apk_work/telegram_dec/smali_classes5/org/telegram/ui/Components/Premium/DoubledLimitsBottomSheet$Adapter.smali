.class public Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# instance fields
.field containerView:Landroid/view/ViewGroup;

.field drawHeader:Z

.field gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field headerRow:I

.field lastViewRow:I

.field final limits:Ljava/util/ArrayList;

.field limitsStartEnd:I

.field limitsStartRow:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field rowCount:I

.field private totalGradientHeight:I


# direct methods
.method public constructor <init>(IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    move/from16 v2, p2

    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->drawHeader:Z

    move-object/from16 v8, p3

    iput-object v8, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v9, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    const/4 v7, -0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIIIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v9, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v2, 0x0

    iput v2, v9, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x1:F

    iput v2, v9, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y1:F

    iput v2, v9, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->x2:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v9, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->y2:F

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    new-instance v9, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v3, Lorg/telegram/messenger/R$string;->GroupsAndChannelsLimitTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v3, Lorg/telegram/messenger/R$string;->GroupsAndChannelsLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v6, v11

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitDefault:I

    iget v7, v2, Lorg/telegram/messenger/MessagesController;->channelsLimitPremium:I

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->PinChatsLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->PinChatsLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersPinnedLimitPremium:I

    const/16 v17, 0x0

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->PublicLinksLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->PublicLinksLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->publicLinksLimitPremium:I

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->SavedGifsLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->SavedGifsLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->savedGifsLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->FavoriteStickersLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->FavoriteStickersLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->BioLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->BioLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->aboutLengthLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->aboutLengthLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->CaptionsLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->CaptionsLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->stickersFavedLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->captionLengthLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->FoldersLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->FoldersLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    move-object v12, v3

    move/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->ChatPerFolderLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget v4, Lorg/telegram/messenger/R$string;->ChatPerFolderLimitSubtitle:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    iget v4, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    iget v5, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v18 .. v23}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->ConnectedAccountsLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v4, Lorg/telegram/messenger/R$string;->ConnectedAccountsLimitSubtitle:I

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/4 v15, 0x3

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    sget v4, Lorg/telegram/messenger/R$string;->SimilarChannelsLimitTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v4, Lorg/telegram/messenger/R$string;->SimilarChannelsLimitSubtitle:I

    iget v6, v2, Lorg/telegram/messenger/MessagesController;->recommendedChannelsLimitPremium:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v6, v7, v11

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lorg/telegram/messenger/MessagesController;->recommendedChannelsLimitDefault:I

    iget v8, v2, Lorg/telegram/messenger/MessagesController;->recommendedChannelsLimitPremium:I

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;-><init>(Ljava/lang/String;Ljava/lang/String;IILorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v10, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    iput v11, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->headerRow:I

    iput v10, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v10

    iput v1, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartEnd:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->headerRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->lastViewRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public measureGradient(Landroid/content/Context;II)V
    .locals 4

    new-instance v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->setData(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    iput v1, v2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->yOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->totalGradientHeight:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->setData(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;)V

    iget-object v0, p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limits:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->limitsStartRow:I

    sub-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Limit;->yOffset:I

    iput p2, v0, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientYOffset:I

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget p2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->totalGradientHeight:I

    iput p2, p1, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->gradientTotalHeight:I

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x10

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setParentViewForGradien(Landroid/view/ViewGroup;)V

    iget-object p1, p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$LimitCell;->previewView:Lorg/telegram/ui/Components/Premium/LimitPreviewView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;->setStaticGradinet(Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;)V

    goto/16 :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->drawHeader:Z

    if-eqz p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter$1;-><init>(Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->other_2x_large:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->createGradientDrawable(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v11, 0x41000000    # 8.0f

    const/4 v12, 0x0

    const/16 v6, 0x28

    const/high16 v7, 0x41e00000    # 28.0f

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->DoubledLimits:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1, v1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    const/16 v0, 0x40

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
