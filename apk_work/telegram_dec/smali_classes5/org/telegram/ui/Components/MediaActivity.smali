.class public Lorg/telegram/ui/Components/MediaActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
    }
.end annotation


# instance fields
.field private actionModeMessageObjects:Landroid/util/SparseArray;

.field private applyBulletin:Ljava/lang/Runnable;

.field avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dialogId:J

.field private filterPhotos:Z

.field private filterVideos:Z

.field private final firstSubtitleCheck:[Z

.field private hashtag:Ljava/lang/String;

.field private initialTab:I

.field private lastTab:I

.field private nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

.field private shiftDp:I

.field private showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private storiesCount:I

.field private final subtitleAnimator:[Landroid/animation/ValueAnimator;

.field private final subtitleShown:[Z

.field private final subtitleT:[F

.field private subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

.field private tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

.field private titles:[Landroid/widget/FrameLayout;

.field private titlesContainer:Landroid/widget/FrameLayout;

.field private topicId:J

.field private type:I

.field private username:Ljava/lang/String;

.field private zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;


# direct methods
.method public static synthetic $r8$lambda$-E7pTo5-1h2ckezgK3zPyZy35dE(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-Zs9cAenV_0Nd3YH1C7bkGMyJh0(Lorg/telegram/ui/Components/MediaActivity;ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->lambda$showSubtitle$12(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-x8kCnpm3xJuGbTra4n8aQmzbgE(Lorg/telegram/ui/Components/MediaActivity;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$9([Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4uHbAoCwpIhBOFnBHiJhdEm12uw(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CE0gKE6kHokxIqdekGlZYhnOzjw(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$7(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GN5T1Q-eQASBByvZssgLi1OcWtE(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LQ9Fc079C-Mz4ntqmlD1J_YCrHs(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$8([ZLjava/util/ArrayList;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MHg2Cg5048ZdBeSMN2okAsNXO4c(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RBQWec1sHt6UGF98vFueQNdz8HA(Lorg/telegram/ui/Components/MediaActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7bZOMWLNagKFxkNHOwgwplJVxA(Lorg/telegram/ui/Components/MediaActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$updateMediaCount$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gh_UGTWuA92XX1_J_kF1pFQEbe0(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$h0mNMsrI0mtl2-Eo_mwLwYNeQAo(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jCZnKMU-QXAWXr-tHX46p4y4MUk(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->lambda$onGetDebugItems$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$kabw8wEYR7gUCxVSMs5YazTmbQI(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$0(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-7_E4MTouDfU74ULTBaGRNY4i0(Lorg/telegram/ui/Components/MediaActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MediaActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-array v0, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-array v0, p1, [Lorg/telegram/ui/Components/AnimatedTextView;

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    const/16 v0, -0xc

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    new-array v0, p1, [Z

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    new-array v0, p1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    new-array p1, p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/MediaActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MediaActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MediaActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/BackDrawable;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/MediaActivity;)[Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/MediaActivity;)[F
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MediaActivity;)[Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/MediaActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MediaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->hashtag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MediaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/MediaActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MediaActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    return p0
.end method

.method private static synthetic lambda$createView$0(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onItemClick(I)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 12

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v0

    :cond_2
    add-int/2addr v3, v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v7, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    aput-boolean v7, v3, v5

    iput-boolean v1, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    add-int/2addr v5, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v5, v6, v7, v2}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    new-array v0, v0, [Z

    aput-boolean p1, v0, p1

    new-instance v5, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v2, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/MediaActivity;Ljava/util/ArrayList;Z)V

    iput-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    new-instance v11, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda11;

    invoke-direct {v11, p0, v0, v2, v3}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/MediaActivity;[ZLjava/util/ArrayList;[Z)V

    const-string v2, "Undo"

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v6

    if-eqz v1, :cond_8

    sget v7, Lorg/telegram/messenger/R$raw;->contact_check:I

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "StorySavedTitle"

    invoke-static {v1, v4, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "StorySavedSubtitle"

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_4

    :cond_8
    sget v7, Lorg/telegram/messenger/R$raw;->chats_archived:I

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "StoryArchived"

    invoke-static {v1, v4, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1388

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    goto :goto_3

    :goto_4
    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/MediaActivity;[Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->setOnHideListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomIn()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomOut()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-nez v0, :cond_0

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    if-nez v0, :cond_0

    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setStoriesFilter(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->scrollToPage(I)V

    return-void
.end method

.method private synthetic lambda$createView$7(Ljava/util/ArrayList;Z)V
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesPinned(JLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$createView$8([ZLjava/util/ArrayList;[Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    aget-boolean v0, p3, v1

    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesInLists(JLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$createView$9([Z)V
    .locals 1

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$onGetDebugItems$13()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->setLearning(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$showSubtitle$12(ILandroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    aput p2, v0, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    const v1, 0x3f8e353f    # 1.111f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v0, v0, p1

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p2, p2, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$updateMediaCount$11(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSubtitle(IZZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    if-ne v3, v1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleShown:[Z

    aget-boolean v4, v3, p1

    if-ne v4, p2, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity;->firstSubtitleCheck:[Z

    aget-boolean v5, v4, p1

    if-nez v5, :cond_3

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    aput-boolean v0, v4, p1

    aput-boolean p2, v3, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object v3, v3, p1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    aput-object v4, v3, p1

    :cond_4
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    aget v5, v5, p1

    if-eqz p2, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_5
    new-array v1, v1, [F

    aput v5, v1, v0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    aput-object v0, p3, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/MediaActivity;I)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p3, p3, p1

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/MediaActivity$7;-><init>(Lorg/telegram/ui/Components/MediaActivity;IZ)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x140

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p2, p2, p1

    sget-object p3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleAnimator:[Landroid/animation/ValueAnimator;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleT:[F

    if-eqz p2, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    aput v1, p3, p1

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    const v1, 0x3f8e353f    # 1.111f

    if-eqz p2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    const v2, 0x3f8e353f    # 1.111f

    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_9
    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p3, p3, p1

    if-eqz p2, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_b
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object p1, p3, p1

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private updateColors()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateMediaCount()V
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v3, 0x3

    const/16 v4, 0x8

    if-ne v1, v3, :cond_1

    if-eq v0, v4, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget v7, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v7, v6, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    :goto_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    :goto_1
    const/16 v8, 0x9

    if-eq v0, v4, :cond_11

    if-ne v0, v8, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v4, 0xb

    if-ne v0, v4, :cond_5

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->getAllCount()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v1, v1, v7

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SavedDialogsTabCount"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_5
    if-ltz v0, :cond_10

    array-length v4, v1

    if-ge v0, v4, :cond_6

    aget v4, v1, v0

    if-gez v4, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v4, 0x2

    if-nez v0, :cond_9

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    const/4 v3, 0x6

    aget v1, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Photos"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getPhotosVideosTypeFilter()I

    move-result v0

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    const/4 v3, 0x7

    aget v1, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Videos"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Media"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    if-ne v0, v6, :cond_a

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Files"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    if-ne v0, v4, :cond_b

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Voice"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    if-ne v0, v3, :cond_c

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Links"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    const/4 v3, 0x4

    if-ne v0, v3, :cond_d

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MusicFiles"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    const/4 v3, 0x5

    if-ne v0, v3, :cond_e

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v0, v0, v7

    aget v1, v1, v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GIFs"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0xa

    if-ne v0, v1, :cond_10

    invoke-direct {p0, v7, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChannelRecommendations(J)Lorg/telegram/messenger/MessagesController$ChannelRecommendations;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v1, v1, v7

    if-nez v0, :cond_f

    const/4 v3, 0x0

    goto :goto_3

    :cond_f
    iget v3, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->more:I

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$ChannelRecommendations;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v3, v0

    :goto_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Channels"

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_10
    :goto_4
    return-void

    :cond_11
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v1, :cond_13

    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomOut()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_12
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_6
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_15

    iget-object v10, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->canZoomIn()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_14
    const/high16 v10, 0x3f000000    # 0.5f

    :goto_7
    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_17

    iget v10, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v10, v3, :cond_16

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {p0, v2, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v3, v3, v2

    const-string v10, "FoundStories"

    invoke-static {v10, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_9

    :cond_16
    invoke-direct {p0, v2, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v3, v3, v2

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "ProfileMyStoriesCount"

    invoke-static {v11, v1, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_17
    invoke-direct {p0, v2, v2, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    :cond_18
    :goto_9
    iget v1, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v6, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-lez v1, :cond_19

    invoke-direct {p0, v6, v6, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v3, v3, v6

    new-array v8, v2, [Ljava/lang/Object;

    const-string v10, "ProfileStoriesArchiveCount"

    invoke-static {v10, v1, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_a

    :cond_19
    invoke-direct {p0, v6, v2, v6}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    :cond_1a
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v1

    if-gtz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_1c

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_1d

    const/4 v8, 0x0

    goto :goto_c

    :cond_1d
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_c
    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MediaActivity;Z)V

    invoke-virtual {v3, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v10, 0xdc

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1e
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v1, :cond_22

    if-eqz v5, :cond_1f

    iget v3, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    if-ne v3, v0, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    :goto_d
    if-ne v0, v4, :cond_21

    iget-object v4, p0, Lorg/telegram/ui/Components/MediaActivity;->actionModeMessageObjects:Landroid/util/SparseArray;

    if-nez v4, :cond_20

    const/4 v4, 0x0

    goto :goto_e

    :cond_20
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    :goto_e
    new-array v5, v2, [Ljava/lang/Object;

    const-string v8, "ArchiveStories"

    invoke-static {v8, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_10

    :cond_21
    sget v4, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :goto_10
    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->lastTab:I

    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v0

    if-lez v0, :cond_23

    const/4 v2, 0x1

    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v2, :cond_24

    const/high16 v7, 0x3f800000    # 1.0f

    :cond_24
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_25
    :goto_11
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v1, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity$1;

    invoke-direct {v1, v15}, Lorg/telegram/ui/Components/MediaActivity$1;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Lorg/telegram/ui/Components/MediaActivity$2;

    invoke-direct {v6, v15, v2, v1}, Lorg/telegram/ui/Components/MediaActivity$2;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Landroid/widget/FrameLayout;)V

    const/4 v13, 0x1

    iput-boolean v13, v6, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    iput-object v6, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    iget-object v0, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iget v3, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/16 v7, 0x9

    const/16 v14, 0x8

    const/4 v12, 0x2

    const/4 v10, 0x0

    if-eq v3, v13, :cond_0

    if-ne v3, v12, :cond_1

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v4, v15, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/16 v5, 0x55

    const/16 v8, 0x38

    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {v15, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-direct {v4, v2, v0, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v4, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v15, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-direct {v4, v2, v0, v5, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_zoomin:I

    sget v4, Lorg/telegram/messenger/R$string;->MediaZoomIn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomInItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_zoomout:I

    sget v4, Lorg/telegram/messenger/R$string;->MediaZoomOut:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->zoomOutItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    sget v4, Lorg/telegram/messenger/R$string;->Calendar:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v11}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->calendarItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->MediaShowPhotos:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v11, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v3, v15, Lorg/telegram/ui/Components/MediaActivity;->filterPhotos:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->showPhotosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->optionsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->MediaShowVideos:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v11, v3, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-boolean v3, v15, Lorg/telegram/ui/Components/MediaActivity;->filterVideos:Z

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->showVideosItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    const/4 v12, -0x1

    const/16 v4, 0x77

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :goto_1
    iget v5, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v5, v13, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const/high16 v9, 0x41100000    # 9.0f

    const/4 v8, 0x3

    if-ge v3, v5, :cond_7

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v3

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->titlesContainer:Landroid/widget/FrameLayout;

    iget-object v7, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v7, v7, v3

    invoke-static {v12, v12, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v5, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v7, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v3

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v10}, Landroid/view/View;->setPivotX(F)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setPivotY(F)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    const/16 v7, 0x12

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    const v7, 0x3fa66666    # 1.3f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawableTopPadding(I)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    invoke-virtual {v5, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v3

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v5, v5, v3

    iget-object v8, v15, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v8, v8, v3

    const/high16 v9, 0x42900000    # 72.0f

    const/high16 v14, 0x42ec0000    # 118.0f

    if-eqz v0, :cond_4

    const/high16 v22, 0x42ec0000    # 118.0f

    goto :goto_3

    :cond_4
    const/high16 v22, 0x42900000    # 72.0f

    :goto_3
    const/high16 v24, 0x42600000    # 56.0f

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x33

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v5, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v5, v2, v13, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    aput-object v5, v4, v3

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v19, v4, v3

    sget-object v25, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x140

    const v20, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v19 .. v25}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v4, v4, v3

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v4, v4, v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    iget-object v5, v15, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v5, v5, v3

    if-eqz v0, :cond_5

    const/high16 v22, 0x42ec0000    # 118.0f

    goto :goto_4

    :cond_5
    const/high16 v22, 0x42900000    # 72.0f

    :goto_4
    const/high16 v24, 0x42600000    # 56.0f

    const/16 v25, 0x0

    const/16 v19, -0x2

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x33

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_6

    iget-object v4, v15, Lorg/telegram/ui/Components/MediaActivity;->titles:[Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x77

    const/16 v7, 0x9

    const/16 v14, 0x8

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x2

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$3;

    invoke-direct {v3, v15, v2}, Lorg/telegram/ui/Components/MediaActivity$3;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v14, v4, v19

    if-nez v14, :cond_8

    iget-wide v4, v15, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    cmp-long v14, v4, v21

    if-nez v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->savedViewAsChats:Z

    if-eqz v4, :cond_8

    const/high16 v4, 0x41500000    # 13.0f

    goto :goto_5

    :cond_8
    const/high16 v4, 0x41a80000    # 21.0f

    :goto_5
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setRoundRadius(I)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setPivotY(F)V

    new-instance v14, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v14}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v14, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setProfile(Z)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    if-eqz v0, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {v3, v14}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, 0x2a

    const/high16 v24, 0x42280000    # 42.0f

    const/16 v25, 0x33

    const/high16 v26, 0x42800000    # 64.0f

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v3, v2, v13, v13, v13}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v29, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x140

    const v24, 0x3ecccccd    # 0.4f

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v29}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v15, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->selectedTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_a

    const/16 v0, 0x30

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v0, v0, 0x48

    int-to-float v0, v0

    const/high16 v28, 0x42900000    # 72.0f

    const/16 v29, 0x0

    const/16 v23, -0x2

    const/high16 v24, -0x40800000    # -1.0f

    const/16 v25, 0x17

    const/high16 v27, -0x40000000    # -2.0f

    move/from16 v26, v0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v0, v13, :cond_b

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v15, v2, v3}, Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BottomPagerTabs;->setOnTabClick(Lorg/telegram/messenger/Utilities$Callback;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v16, 0x41000000    # 8.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v0, v4, v7, v3, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v15, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v11, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v15}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, v15, Lorg/telegram/ui/Components/MediaActivity;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v15, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance v0, Lorg/telegram/ui/Components/MediaActivity$4;

    invoke-direct {v0, v15}, Lorg/telegram/ui/Components/MediaActivity$4;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-static {v15, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    :cond_b
    iget v0, v15, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/16 v7, 0xb

    if-nez v0, :cond_c

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v23

    cmp-long v0, v3, v23

    if-nez v0, :cond_c

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    cmp-long v0, v3, v21

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/SavedMessagesController;->unsupported:Z

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController;->hasDialogs()Z

    move-result v0

    if-eqz v0, :cond_c

    iput v7, v15, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    :cond_c
    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$6;

    move-object v0, v8

    iget-wide v3, v15, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    iget-object v7, v15, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move/from16 v30, v5

    move-object v5, v7

    iget-object v7, v15, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-object/from16 v31, v8

    move-object v8, v7

    iget-object v7, v15, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    move-object v9, v7

    iget v7, v15, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    move v10, v7

    new-instance v7, Lorg/telegram/ui/Components/MediaActivity$5;

    move-object v12, v7

    invoke-direct {v7, v15}, Lorg/telegram/ui/Components/MediaActivity$5;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object/from16 v32, v14

    move-object v14, v7

    const/4 v7, 0x0

    const/16 v16, 0x0

    move/from16 v13, v16

    move-object/from16 v17, v6

    move/from16 v6, v16

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p0

    move-object/from16 v15, v18

    move-object/from16 v16, v17

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/Components/MediaActivity$6;-><init>(Lorg/telegram/ui/Components/MediaActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    iput-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    move/from16 v3, v30

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->setPinnedToTop(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v1, v2, :cond_10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_f

    move-object/from16 v4, v17

    goto :goto_8

    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move-object/from16 v4, v17

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_10
    move-object/from16 v4, v17

    const/4 v3, 0x2

    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v10, 0x0

    const/high16 v11, 0x42800000    # 64.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v4, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v5, v2, :cond_11

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v5}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    invoke-direct {v0, v2, v5, v5}, Lorg/telegram/ui/Components/MediaActivity;->showSubtitle(IZZ)V

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->tabsView:Lorg/telegram/ui/Components/MediaActivity$StoriesTabsView;

    const/16 v7, 0x57

    if-eqz v6, :cond_12

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_12
    const/4 v9, -0x1

    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->buttonContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_13

    const/16 v8, 0x40

    invoke-static {v9, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    iget-wide v6, v0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    iget-wide v10, v0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    cmp-long v8, v10, v21

    if-eqz v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v8, v6, v10

    if-nez v8, :cond_14

    iget-wide v6, v0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    :cond_14
    iget v8, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_16

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->storiesCount:I

    if-eq v3, v9, :cond_15

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->subtitleTextView:[Lorg/telegram/ui/Components/AnimatedTextView;

    aget-object v6, v6, v5

    const-string v7, "FoundStories"

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralStringSpaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_c
    move-object/from16 v8, v32

    goto/16 :goto_11

    :cond_16
    if-ne v8, v3, :cond_17

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    :goto_d
    sget v6, Lorg/telegram/messenger/R$string;->ProfileStoriesArchive:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_c

    :cond_17
    if-ne v8, v2, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    sget v6, Lorg/telegram/messenger/R$string;->ProfileMyStories:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    goto :goto_d

    :cond_18
    const-wide/32 v8, 0x28ae10

    const/high16 v3, 0x3f400000    # 0.75f

    cmp-long v10, v6, v8

    if-nez v10, :cond_19

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v5

    sget v7, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v6, 0x15

    move-object/from16 v8, v32

    :goto_e
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    :goto_f
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto/16 :goto_11

    :cond_19
    move-object/from16 v8, v32

    iget-wide v9, v0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    cmp-long v11, v9, v21

    if-eqz v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-nez v11, :cond_1a

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v5

    sget v7, Lorg/telegram/messenger/R$string;->MyNotes:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v6, 0x16

    goto :goto_e

    :cond_1a
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v5

    :goto_10
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v8, v6, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_12

    :cond_1b
    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v6, :cond_1c

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    sget v6, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const v3, 0x3f4ccccd    # 0.8f

    goto/16 :goto_f

    :cond_1c
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v5

    goto :goto_10

    :cond_1d
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v5

    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v8, v6, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_12

    :cond_1e
    :goto_11
    const/4 v3, 0x0

    :goto_12
    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/Components/MediaActivity;->avatarImageView:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    const-string v9, "50_50"

    invoke-virtual {v7, v6, v9, v8, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->nameTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v5

    sget v6, Lorg/telegram/messenger/R$string;->SharedContentTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->searchItemIcon:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v3, :cond_21

    iget v6, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_21

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    if-eqz v3, :cond_22

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSearchItemVisible()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v3, v6, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->animateSearchToOptions(ZZ)V

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getSearchOptionsItem()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCalendarItemVisible()Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-eq v3, v2, :cond_23

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_13
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActivity;->updateColors()V

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    if-ne v1, v2, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_24

    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->onTabProgress(F)V

    :cond_24
    return-object v4
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object p2, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    :cond_0
    return-void
.end method

.method public getDialogId()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    return-wide v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->getNavigationBarColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 11

    new-instance v8, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v9
.end method

.method public isLightStatusBar()Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isSwipeBackEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->isCurrentTabFirst()Z

    move-result p1

    return p1
.end method

.method public mediaCountUpdated()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->getLastMediaCount()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->setNewMediaCounts([I)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/MediaActivity;->updateMediaCount()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeSheet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->closeActionMode(Z)Z

    return v1

    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "topic_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hashtag"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->hashtag:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->username:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "storiesCount"

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->storiesCount:I

    iget v0, p0, Lorg/telegram/ui/Components/MediaActivity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "start_from"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/MediaActivity;->initialTab:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lorg/telegram/ui/Components/MediaActivity;->topicId:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadUserInfo(Lorg/telegram/tgnet/TLRPC$User;ZI)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/MediaActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->currentUserInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    if-nez v0, :cond_3

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->sharedMediaPreloader:Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->addDelegate(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloaderDelegate;)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesEnabledUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActivity;->applyBulletin:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onGetDebugItems()Ljava/util/List;
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ShapeDetector;->isLearning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Disable"

    goto :goto_0

    :cond_0
    const-string v2, "Enable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shape detector learning debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MediaActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/MediaActivity;)V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-void
.end method
