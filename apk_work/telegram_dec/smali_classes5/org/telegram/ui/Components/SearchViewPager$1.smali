.class Lorg/telegram/ui/Components/SearchViewPager$1;
.super Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchViewPager;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchViewPager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragment:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$6dIxMr-um-mqxQKLRqedUM1kRV4(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$5(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OtQBEU3jz-e9FqRLUauYb7kjWcs(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$3(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wc78u_--lYsxlhySx3Qc0ptMuu4(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$2(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_oaULIgpVgZrQGnDuHp97jjBh4E(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$1(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_uR-uS37f3YVGmOah3yA4RMqf2M(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$4(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$et2SdWptKt73-L8vg58EOKkCblI(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$0(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$llEFeB-c6Rc4zl4N_yN_yeEHZO0(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchViewPager$1;->lambda$openSponsoredOptions$6(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    move-object/from16 v0, p9

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, p10

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager$1;->val$context:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private static synthetic lambda$openSponsoredOptions$0(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->closeSwipeback()V

    return-void
.end method

.method private static synthetic lambda$openSponsoredOptions$1(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method private synthetic lambda$openSponsoredOptions$2(Lorg/telegram/ui/DialogsActivity;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->removeAllAds()V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->AdHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$openSponsoredOptions$3(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/SearchAdsInfoBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;)V

    invoke-direct {v0, p2, v1, v2}, Lorg/telegram/ui/SearchAdsInfoBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openSponsoredOptions$4(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->removeAd(Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V

    return-void
.end method

.method private synthetic lambda$openSponsoredOptions$5(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->random_id:[B

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/ReportBottomSheet;->openSponsoredPeer(Lorg/telegram/ui/ActionBar/BaseFragment;[BLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openSponsoredOptions$6(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->disableAds(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->removeAllAds()V

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->AdHidden:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getCurrentItemCount()I

    move-result v0

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchViewPager;->access$000(Lorg/telegram/ui/Components/SearchViewPager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/SearchViewPager;->access$002(Lorg/telegram/ui/Components/SearchViewPager;Z)Z

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    return-void
.end method

.method protected openBotApp(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->closeSearching()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->openApp(Lorg/telegram/tgnet/TLRPC$User;I)V

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->putRecentSearch(JLorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method protected openPublicPosts()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsHashtag:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPosts:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsLastRate:I

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->publicPostsTotalCount:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->setInitialData(Ljava/lang/String;Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->expandedPublicPosts:Z

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchViewPager;->access$100(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->getCurrentTabId()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->scrollToTab(II)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->this$0:Lorg/telegram/ui/Components/SearchViewPager;

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->hashtagSearchAdapter:Lorg/telegram/ui/Components/HashtagsSearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/HashtagsSearchAdapter;->search(Ljava/lang/String;)V

    return-void
.end method

.method protected openSponsoredOptions(Lorg/telegram/ui/Cells/ProfileSearchCell;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->sponsor_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->additional_info:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    sget v2, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->sponsor_info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xd

    if-nez v1, :cond_1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->sponsor_info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    :cond_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->additional_info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->sponsor_info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_2
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;->additional_info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    sget v2, Lorg/telegram/messenger/R$string;->SponsoredMessageSponsorReportable:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    :cond_4
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_info:I

    sget v1, Lorg/telegram/messenger/R$string;->AboutRevenueSharingAds:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$context:Landroid/content/Context;

    new-instance v4, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2, v3, p1}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, v0, v1, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    sget v2, Lorg/telegram/messenger/R$string;->ReportAd:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    new-instance v4, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, p2, p1}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$TL_sponsoredPeer;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    sget v1, Lorg/telegram/messenger/R$string;->RemoveAds:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager$1;->val$fragment:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2, p1}, Lorg/telegram/ui/Components/SearchViewPager$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SearchViewPager$1;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p2, v0, v1, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x3

    goto :goto_0

    :cond_5
    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method
