.class public Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MessageStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverviewCell"
.end annotation


# instance fields
.field primary:[Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/MessageStatisticActivity;

.field title:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MessageStatisticActivity;Landroid/content/Context;)V
    .locals 12

    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array v0, p1, [Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v5

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v10, v8, v9

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v10, v8, v9

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    const/high16 v10, 0x41880000    # 17.0f

    invoke-virtual {v8, p1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v8, p1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v8, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const/high16 v11, 0x41800000    # 16.0f

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2
    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method

.method private updateColors()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public setData()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3000(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3000(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getViews()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$3000(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getForwards()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$3000(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getReactions()I

    move-result v3

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->forwards_count:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->reactions_count:I

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v3}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v5}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v5}, Lorg/telegram/ui/MessageStatisticActivity;->access$3100(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    sget v4, Lorg/telegram/messenger/R$string;->StatisticViews:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v5}, Lorg/telegram/ui/MessageStatisticActivity;->access$3200(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v5

    invoke-static {v5, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget v4, Lorg/telegram/messenger/R$string;->PublicShares:I

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "PublicShares"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    sget v5, Lorg/telegram/messenger/R$string;->Reactions:I

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Reactions"

    invoke-static {v7, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1400(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$1400(Lorg/telegram/ui/MessageStatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->this$0:Lorg/telegram/ui/MessageStatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/MessageStatisticActivity;->access$3200(Lorg/telegram/ui/MessageStatisticActivity;)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->primary:[Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->title:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    sget v2, Lorg/telegram/messenger/R$string;->PrivateShares:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "PrivateShares"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/telegram/ui/MessageStatisticActivity$OverviewCell;->updateColors()V

    return-void
.end method
