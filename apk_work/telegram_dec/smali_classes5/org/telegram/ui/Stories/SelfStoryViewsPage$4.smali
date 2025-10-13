.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;-><init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$P5mFI-ATbrOZ6IMz9hL6v8vbtsM(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZ9ExloFDL_aXH6jflYYO4swF7c(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bi4jB3is2uaFHm209YvSI4quil0(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eovHZ3JFF3rbNfzTTothcaseAF4(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDqlr_uqGmSY2oLEMzCSCB1EJHQ(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tE3zJGh4T7BtM5eE59ZN7FATZH8(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->lambda$onItemClick$5(Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iput-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_ban:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryHidFromToast:I

    new-array v2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v1, Lorg/telegram/messenger/R$string;->StoryShownBackToToast:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p3, v3, p2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p4, p1, v2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 2

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->blockPeer(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 4

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->updateBlockUser(JZ)V

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockPeer(J)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$4(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_ban:I

    sget v2, Lorg/telegram/messenger/R$string;->DeletedFromYourContacts:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5(Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;)V
    .locals 3

    new-instance p3, Lorg/telegram/ui/Components/EmojiPacksAlert;

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p3, v0, v1, v2, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->show()V

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v8, 0x1

    instance-of v1, v0, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return v9

    :cond_0
    move-object v10, v0

    check-cast v10, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    iget-object v1, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    if-nez v1, :cond_2

    :cond_1
    move-object v2, v7

    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_2
    iget-object v1, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v11, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->view:Lorg/telegram/tgnet/tl/TL_stories$StoryView;

    if-nez v11, :cond_3

    return v9

    :cond_3
    iget-object v1, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-wide v1, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    if-nez v13, :cond_4

    return v9

    :cond_4
    iget-object v1, v12, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v14, 0x1

    goto :goto_0

    :cond_5
    const/4 v14, 0x0

    :goto_0
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v1, :cond_7

    iget-object v1, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v2, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v15, 0x1

    :goto_2
    iget-object v1, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {v1, v11}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result v1

    invoke-virtual {v12}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Stories/StoriesController;->isBlocked(Lorg/telegram/tgnet/tl/TL_stories$StoryView;)Z

    move-result v16

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v17

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, ""

    goto :goto_3

    :cond_8
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :goto_3
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_a

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_a
    move-object/from16 v18, v2

    if-eqz v17, :cond_b

    return v9

    :cond_b
    iget-object v2, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v2, Lorg/telegram/ui/Stories/StoryViewer;->containerView:Lorg/telegram/ui/Stories/HwFrameLayout;

    iget-object v3, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->ignoreX()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v4, v7, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v4, v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/16 v2, 0x85

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    if-eqz v1, :cond_c

    if-nez v16, :cond_c

    if-nez v14, :cond_c

    if-nez v17, :cond_c

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    const/4 v5, 0x0

    :goto_4
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_stories_myhide:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryHideFrom:I

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v18, v1, v9

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v12

    move-object v9, v3

    move-object v3, v13

    move v7, v4

    move-object/from16 v4, v18

    move/from16 p2, v15

    move v15, v5

    move-object v5, v10

    move-object/from16 v19, v10

    move-object v10, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    invoke-virtual {v10, v15, v7, v9, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v7

    if-eqz v16, :cond_d

    if-nez v14, :cond_d

    if-nez v17, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    :goto_5
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_menu_stories:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryShowBackTo:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v18, v2, v1

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v15, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    invoke-virtual {v7, v8, v9, v10, v15}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    if-nez p2, :cond_e

    if-nez v14, :cond_e

    if-nez v17, :cond_e

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    sget v0, Lorg/telegram/messenger/R$string;->BlockUser:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v19

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    const/4 v0, 0x1

    move-object v2, v6

    move v3, v7

    move v4, v8

    move-object v5, v9

    move v6, v0

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    if-nez p2, :cond_f

    if-eqz v14, :cond_f

    if-nez v17, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    :goto_7
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_block:I

    sget v0, Lorg/telegram/messenger/R$string;->Unblock:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v19

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    invoke-virtual {v6, v7, v9, v10, v14}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v6

    if-eqz p2, :cond_10

    if-nez v17, :cond_10

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    :goto_8
    sget v0, Lorg/telegram/messenger/R$string;->StoryDeleteContact:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda4;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Cells/ReactedUserHolderView;Lorg/telegram/tgnet/tl/TL_stories$StoryView;)V

    const/4 v4, 0x1

    move-object v0, v6

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    iget-object v1, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryView;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v2, :cond_11

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->findStickerSet(J)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget-object v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v4, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v3, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v6, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x3

    move-object v3, v1

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda5;

    invoke-direct {v3, v2, v9, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;Ljava/util/ArrayList;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    move-object/from16 v2, p0

    :cond_12
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v3

    if-gtz v3, :cond_13

    if-nez v1, :cond_13

    const/4 v1, 0x0

    return v1

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    :try_start_0
    iget-object v0, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_0
    const/4 v3, 0x1

    :catch_1
    :goto_a
    return v3

    :goto_b
    return v1
.end method
