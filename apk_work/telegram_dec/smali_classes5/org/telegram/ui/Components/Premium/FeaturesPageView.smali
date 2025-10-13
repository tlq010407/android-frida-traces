.class public Lorg/telegram/ui/Components/Premium/FeaturesPageView;
.super Lorg/telegram/ui/Components/Premium/BaseListPageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;,
        Lorg/telegram/ui/Components/Premium/FeaturesPageView$ItemCell;,
        Lorg/telegram/ui/Components/Premium/FeaturesPageView$HeaderView;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field bitmap:Landroid/graphics/Bitmap;

.field items:Ljava/util/ArrayList;

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$dXX_8n-C6-cQoBeyITZRw1xIN6w(Landroid/util/SparseIntArray;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->lambda$new$0(Landroid/util/SparseIntArray;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/Components/Premium/BaseListPageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->items:Ljava/util/ArrayList;

    iput v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->type:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_0

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_order:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesPriority:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesPriorityDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/16 v6, 0x14

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesStealth:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesStealthDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesQuality:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesQualityDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x19

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_views:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesViews:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesViewsDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_timer:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesExpiration:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesExpirationDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_save:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesSaveToGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesSaveToGalleryDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_caption:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesCaption:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesCaptionDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x15

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_link:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesFormatting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesFormattingDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-ne v0, v9, :cond_1

    iget-object v11, v1, Lorg/telegram/messenger/MessagesController;->businessFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_premium_location:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessLocation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessLocationDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/16 v6, 0x1d

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_premium_clock:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessOpeningHours:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessOpeningHoursDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1e

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_quickreply:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessQuickReplies:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessQuickRepliesDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_status:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessGreetingMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessGreetingMessagesDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_premium_away:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessAwayMessages:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessAwayMessagesDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_premium_chatbot:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessChatbots2:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessChatbotsDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x22

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_feature_intro:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessIntro:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessIntroDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_premium_chatlink:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessChatLinks:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumBusinessChatLinksDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x25

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    move-object v11, v10

    :goto_1
    if-eqz v11, :cond_2

    new-instance v0, Lorg/telegram/ui/Components/Premium/FeaturesPageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseIntArray;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2, v10}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;ILorg/telegram/ui/Components/Premium/FeaturesPageView$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;

    const/4 v2, 0x2

    invoke-direct {v1, v7, v2, v10}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;ILorg/telegram/ui/Components/Premium/FeaturesPageView$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->bitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v11, v2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v13

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/util/SparseIntArray;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;)I
    .locals 1

    iget p1, p1, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;->order:I

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget p2, p2, Lorg/telegram/ui/Components/Premium/FeaturesPageView$Item;->order:I

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/Premium/FeaturesPageView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/FeaturesPageView$1;-><init>(Lorg/telegram/ui/Components/Premium/FeaturesPageView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/FeaturesPageView;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    return-object v0
.end method
